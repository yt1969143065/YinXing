/***************************************************************************************
* Copyright (c) 2020-2022 Beijing Vcore Technology Co.,Ltd.
* Copyright (c) 2020-2021 Institute of Computing Technology, Chinese Academy of Sciences
* Copyright (c) 2020-2021 Peng Cheng Laboratory
*
* YinXing is licensed under Mulan PSL v2.
* You can use this software according to the terms and conditions of the Mulan PSL v2.
* You may obtain a copy of Mulan PSL v2 at:
*          http://license.coscl.org.cn/MulanPSL2
*
* THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OF ANY KIND,
* EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO NON-INFRINGEMENT,
* MERCHANTABILITY OR FIT FOR A PARTICULAR PURPOSE.
*
* See the Mulan PSL v2 for more details.
***************************************************************************************/

package rvcore.backend.rename

import chipsalliance.rocketchip.config.Parameters
import chisel3._
import chisel3.util._
import rvcore._
import utils._

class BusyTableReadIO(implicit p: Parameters) extends RVCOREBundle {
  val req = Input(UInt(PhyRegIdxWidth.W))
  val resp = Output(Bool())
}

class BusyTable(numReadPorts: Int, numWritePorts: Int)(implicit p: Parameters) extends RVCOREModule with HasPerfEvents {
  val io = IO(new Bundle() {
    // set preg state to busy
    val allocPregs = Vec(RenameWidth, Flipped(ValidIO(UInt(PhyRegIdxWidth.W))))
    // set preg state to ready (write back regfile + rob walk)
    val wbPregs = Vec(numWritePorts, Flipped(ValidIO(UInt(PhyRegIdxWidth.W))))
    // read preg state
    val read = Vec(numReadPorts, new BusyTableReadIO)
  })

  val table = RegInit(0.U(NRPhyRegs.W))

  def reqVecToMask(rVec: Vec[Valid[UInt]]): UInt = {
    ParallelOR(rVec.map(v => Mux(v.valid, UIntToOH(v.bits), 0.U)))
  }

  val wbMask = reqVecToMask(io.wbPregs)
  val allocMask = reqVecToMask(io.allocPregs)

  val tableAfterWb = table & (~wbMask).asUInt
  val tableAfterAlloc = tableAfterWb | allocMask

  io.read.map(r => r.resp := !table(r.req))

  table := tableAfterAlloc

  RVCOREDebug(p"table    : ${Binary(table)}\n")
  RVCOREDebug(p"tableNext: ${Binary(tableAfterAlloc)}\n")
  RVCOREDebug(p"allocMask: ${Binary(allocMask)}\n")
  RVCOREDebug(p"wbMask   : ${Binary(wbMask)}\n")
  for (i <- 0 until NRPhyRegs) {
    RVCOREDebug(table(i), "%d is busy\n", i.U)
  }

  RVCOREPerfAccumulate("busy_count", PopCount(table))

  val perfEvents = Seq(
    ("std_freelist_1_4_valid", (PopCount(table) < (NRPhyRegs.U/4.U))                                             ),
    ("std_freelist_2_4_valid", (PopCount(table) > (NRPhyRegs.U/4.U)) & (PopCount(table) <= (NRPhyRegs.U/2.U))    ),
    ("std_freelist_3_4_valid", (PopCount(table) > (NRPhyRegs.U/2.U)) & (PopCount(table) <= (NRPhyRegs.U*3.U/4.U))),
    ("std_freelist_4_4_valid", (PopCount(table) > (NRPhyRegs.U*3.U/4.U))                                         )
  )
  generatePerfEvent()
}
