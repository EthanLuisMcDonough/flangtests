; ModuleID = 'FIRModule'
source_filename = "FIRModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define void @_QMtestPadd_arr(ptr nocapture writeonly %0, ptr nocapture readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4, !tbaa !3
  %4 = add i32 %3, 27
  store i32 %4, ptr %0, align 4, !tbaa !3
  %5 = getelementptr i32, ptr %1, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !3
  %7 = add i32 %6, 27
  %8 = getelementptr i32, ptr %0, i64 1
  store i32 %7, ptr %8, align 4, !tbaa !3
  %9 = getelementptr i32, ptr %1, i64 2
  %10 = load i32, ptr %9, align 4, !tbaa !3
  %11 = add i32 %10, 27
  %12 = getelementptr i32, ptr %0, i64 2
  store i32 %11, ptr %12, align 4, !tbaa !3
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any data access", !5, i64 0}
!5 = !{!"any access", !6, i64 0}
!6 = !{!"Flang Type TBAA Root"}
