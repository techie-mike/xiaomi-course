; ModuleID = 'game.cpp'
source_filename = "game.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @_Z14NearNeighboursPA1000_bii([1000 x i8]* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [1000 x i8]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store [1000 x i8]* %0, [1000 x i8]** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %67, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = icmp sle i32 %13, %15
  br i1 %16, label %17, label %70

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %63, %17
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp sle i32 %21, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %63

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 1000
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %44, 2000
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40, %37, %34
  br label %63

47:                                               ; preds = %43
  %48 = load [1000 x i8]*, [1000 x i8]** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1000 x i8], [1000 x i8]* %48, i64 %50
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1000 x i8], [1000 x i8]* %51, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = trunc i8 %55 to i1
  %57 = zext i1 %56 to i32
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %47
  br label %63

63:                                               ; preds = %62, %46, %33
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %20, !llvm.loop !6

66:                                               ; preds = %20
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %12, !llvm.loop !8

70:                                               ; preds = %12
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z9EvolutionPA1000_bS0_([1000 x i8]* noundef %0, [1000 x i8]* noundef %1) #0 {
  %3 = alloca [1000 x i8]*, align 8
  %4 = alloca [1000 x i8]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store [1000 x i8]* %0, [1000 x i8]** %3, align 8
  store [1000 x i8]* %1, [1000 x i8]** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %71, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 2000
  br i1 %10, label %11, label %74

11:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %67, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 1000
  br i1 %14, label %15, label %70

15:                                               ; preds = %12
  %16 = load [1000 x i8]*, [1000 x i8]** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call noundef i32 @_Z14NearNeighboursPA1000_bii([1000 x i8]* noundef %16, i32 noundef %17, i32 noundef %18)
  store i32 %19, i32* %7, align 4
  %20 = load [1000 x i8]*, [1000 x i8]** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1000 x i8], [1000 x i8]* %20, i64 %22
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1000 x i8], [1000 x i8]* %23, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = trunc i8 %27 to i1
  %29 = zext i1 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %15
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load [1000 x i8]*, [1000 x i8]** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1000 x i8], [1000 x i8]* %35, i64 %37
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [1000 x i8], [1000 x i8]* %38, i64 0, i64 %40
  store i8 1, i8* %41, align 1
  br label %42

42:                                               ; preds = %34, %31
  br label %66

43:                                               ; preds = %15
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %57

49:                                               ; preds = %46, %43
  %50 = load [1000 x i8]*, [1000 x i8]** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1000 x i8], [1000 x i8]* %50, i64 %52
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1000 x i8], [1000 x i8]* %53, i64 0, i64 %55
  store i8 1, i8* %56, align 1
  br label %65

57:                                               ; preds = %46
  %58 = load [1000 x i8]*, [1000 x i8]** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [1000 x i8], [1000 x i8]* %58, i64 %60
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1000 x i8], [1000 x i8]* %61, i64 0, i64 %63
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %57, %49
  br label %66

66:                                               ; preds = %65, %42
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %12, !llvm.loop !9

70:                                               ; preds = %12
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %8, !llvm.loop !10

74:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z10CopyBufferPA1000_bS0_([1000 x i8]* noundef %0, [1000 x i8]* noundef %1) #0 {
  %3 = alloca [1000 x i8]*, align 8
  %4 = alloca [1000 x i8]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store [1000 x i8]* %0, [1000 x i8]** %3, align 8
  store [1000 x i8]* %1, [1000 x i8]** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2000
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %32, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 1000
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load [1000 x i8]*, [1000 x i8]** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1000 x i8], [1000 x i8]* %15, i64 %17
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1000 x i8], [1000 x i8]* %18, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = trunc i8 %22 to i1
  %24 = load [1000 x i8]*, [1000 x i8]** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1000 x i8], [1000 x i8]* %24, i64 %26
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1000 x i8], [1000 x i8]* %27, i64 0, i64 %29
  %31 = zext i1 %23 to i8
  store i8 %31, i8* %30, align 1
  br label %32

32:                                               ; preds = %14
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %11, !llvm.loop !11

35:                                               ; preds = %11
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7, !llvm.loop !12

39:                                               ; preds = %7
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z10DrawWindowPA1000_b([1000 x i8]* noundef %0) #1 {
  %2 = alloca [1000 x i8]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [1000 x i8]* %0, [1000 x i8]** %2, align 8
  call void @_Z11ClearWindowv()
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 2000
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %26, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 1000
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load [1000 x i8]*, [1000 x i8]** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1000 x i8], [1000 x i8]* %13, i64 %15
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [1000 x i8], [1000 x i8]* %16, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = trunc i8 %20 to i1
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  call void @_Z8PutPixelii(i32 noundef %23, i32 noundef %24)
  br label %25

25:                                               ; preds = %22, %12
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %9, !llvm.loop !13

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %5, !llvm.loop !14

33:                                               ; preds = %5
  call void @_Z7Displayv()
  ret void
}

declare void @_Z11ClearWindowv() #2

declare void @_Z8PutPixelii(i32 noundef, i32 noundef) #2

declare void @_Z7Displayv() #2

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z10InitBufferPA1000_b([1000 x i8]* noundef %0) #1 {
  %2 = alloca [1000 x i8]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [1000 x i8]* %0, [1000 x i8]** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 2000
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 1000
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = call noundef zeroext i1 @_Z6Randomv()
  %14 = load [1000 x i8]*, [1000 x i8]** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1000 x i8], [1000 x i8]* %14, i64 %16
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1000 x i8], [1000 x i8]* %17, i64 0, i64 %19
  %21 = zext i1 %13 to i8
  store i8 %21, i8* %20, align 1
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %9, !llvm.loop !15

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %5, !llvm.loop !16

29:                                               ; preds = %5
  ret void
}

declare noundef zeroext i1 @_Z6Randomv() #2

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local noundef i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca [2000 x [1000 x i8]], align 16
  %3 = alloca [2000 x [1000 x i8]], align 16
  store i32 0, i32* %1, align 4
  %4 = bitcast [2000 x [1000 x i8]]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 2000000, i1 false)
  %5 = bitcast [2000 x [1000 x i8]]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 2000000, i1 false)
  %6 = getelementptr inbounds [2000 x [1000 x i8]], [2000 x [1000 x i8]]* %2, i64 0, i64 0
  call void @_Z10InitBufferPA1000_b([1000 x i8]* noundef %6)
  br label %7

7:                                                ; preds = %0, %7
  %8 = getelementptr inbounds [2000 x [1000 x i8]], [2000 x [1000 x i8]]* %2, i64 0, i64 0
  call void @_Z10DrawWindowPA1000_b([1000 x i8]* noundef %8)
  %9 = getelementptr inbounds [2000 x [1000 x i8]], [2000 x [1000 x i8]]* %2, i64 0, i64 0
  %10 = getelementptr inbounds [2000 x [1000 x i8]], [2000 x [1000 x i8]]* %3, i64 0, i64 0
  call void @_Z9EvolutionPA1000_bS0_([1000 x i8]* noundef %9, [1000 x i8]* noundef %10)
  %11 = getelementptr inbounds [2000 x [1000 x i8]], [2000 x [1000 x i8]]* %2, i64 0, i64 0
  %12 = getelementptr inbounds [2000 x [1000 x i8]], [2000 x [1000 x i8]]* %3, i64 0, i64 0
  call void @_Z10CopyBufferPA1000_bS0_([1000 x i8]* noundef %11, [1000 x i8]* noundef %12)
  br label %7, !llvm.loop !17
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.6-++20220827082222+f28c006a5895-1~exp1~20220827202233.158"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
