; ModuleID = './fnc_add_scalar/test.c'
source_filename = "./fnc_add_scalar/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32* @add_arr(i32* returned %0) local_unnamed_addr #0 {
  %2 = load i32, i32* %0, align 4, !tbaa !2
  %3 = add nsw i32 %2, 27
  store i32 %3, i32* %0, align 4, !tbaa !2
  %4 = getelementptr inbounds i32, i32* %0, i64 1
  %5 = load i32, i32* %4, align 4, !tbaa !2
  %6 = add nsw i32 %5, 27
  store i32 %6, i32* %4, align 4, !tbaa !2
  %7 = getelementptr inbounds i32, i32* %0, i64 2
  %8 = load i32, i32* %7, align 4, !tbaa !2
  %9 = add nsw i32 %8, 27
  store i32 %9, i32* %7, align 4, !tbaa !2
  ret i32* %0
}

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
