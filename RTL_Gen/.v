//commit 0bc887d65b3a989710a71991e43baabe775231a6
//Author: Zusong Li <lizusong@rvcore.com>
//Date:   Tue Aug 23 18:13:24 2022 +0800
//
//    Initial Version
//diff --git a/build.sc b/build.sc
//index 23b13c5..97bfb22 100644
//--- a/build.sc
//+++ b/build.sc
//@@ -134,7 +134,7 @@ trait CommonYinXing extends RVCOREModule with SbtModule { m =>
// 
//   override def millSourcePath = os.pwd
// 
//-  override def forkArgs = Seq("-Xmx64G", "-Xss256m")
//+  override def forkArgs = Seq("-Xmx16G", "-Xss256m")
// 
//   override def ivyDeps = super.ivyDeps() ++ Seq(ivys.chiseltest)
// 
