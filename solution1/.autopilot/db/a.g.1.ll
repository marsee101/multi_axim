; ModuleID = 'D:/Vivado_HLS/ZYBO/multi_axim/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@multi_axim.str = internal unnamed_addr constant [11 x i8] c"multi_axim\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
define i32 @multi_axim(i32* %x, i32* %y) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @multi_axim.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !19), !dbg !20 ; [debug line = 3:21] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !21), !dbg !22 ; [debug line = 3:29] [debug variable = y]
  call void (...)* @_ssdm_op_SpecInterface(i32* %y, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 10, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !23 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %x, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 10, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !25 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !26 ; [debug line = 6:1]
  br label %1, !dbg !27                           ; [debug line = 8:14]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i, 10, !dbg !27        ; [#uses=1 type=i1] [debug line = 8:14]
  br i1 %exitcond, label %3, label %2, !dbg !27   ; [debug line = 8:14]

; <label>:2                                       ; preds = %1
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !29 ; [#uses=1 type=i32] [debug line = 8:27]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)), !dbg !31 ; [debug line = 9:1]
  %tmp = sext i32 %i to i64, !dbg !32             ; [#uses=2 type=i64] [debug line = 10:2]
  %x.addr = getelementptr inbounds i32* %x, i64 %tmp, !dbg !32 ; [#uses=1 type=i32*] [debug line = 10:2]
  %x.load = load i32* %x.addr, align 4, !dbg !32  ; [#uses=4 type=i32] [debug line = 10:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %x.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %x.load) nounwind
  %tmp.1 = add nsw i32 %x.load, 1, !dbg !32       ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp.2 = mul nsw i32 %tmp.1, %x.load, !dbg !32  ; [#uses=1 type=i32] [debug line = 10:2]
  %y.addr = getelementptr inbounds i32* %y, i64 %tmp, !dbg !32 ; [#uses=1 type=i32*] [debug line = 10:2]
  store i32 %tmp.2, i32* %y.addr, align 4, !dbg !32 ; [debug line = 10:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !33 ; [#uses=0 type=i32] [debug line = 11:2]
  %i.1 = add nsw i32 %i, 1, !dbg !34              ; [#uses=1 type=i32] [debug line = 8:22]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !35), !dbg !34 ; [debug line = 8:22] [debug variable = i]
  br label %1, !dbg !34                           ; [debug line = 8:22]

; <label>:3                                       ; preds = %1
  ret i32 0, !dbg !36                             ; [debug line = 12:2]
}

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"D:/Vivado_HLS/ZYBO/multi_axim/solution1/.autopilot/db/multi_axim.pragma.2.c", metadata !"d:/Vivado_HLS/ZYBO", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"multi_axim", metadata !"multi_axim", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*, i32*)* @multi_axim, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"multi_axim/multi_axim.c", metadata !"d:/Vivado_HLS/ZYBO", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"return", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 1, i32 0}
!19 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777219, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 3, i32 21, metadata !5, null}
!21 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 33554435, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 3, i32 29, metadata !5, null}
!23 = metadata !{i32 4, i32 1, metadata !24, null}
!24 = metadata !{i32 786443, metadata !5, i32 3, i32 31, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 5, i32 1, metadata !24, null}
!26 = metadata !{i32 6, i32 1, metadata !24, null}
!27 = metadata !{i32 8, i32 14, metadata !28, null}
!28 = metadata !{i32 786443, metadata !24, i32 8, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 8, i32 27, metadata !30, null}
!30 = metadata !{i32 786443, metadata !28, i32 8, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 9, i32 1, metadata !30, null}
!32 = metadata !{i32 10, i32 2, metadata !30, null}
!33 = metadata !{i32 11, i32 2, metadata !30, null}
!34 = metadata !{i32 8, i32 22, metadata !28, null}
!35 = metadata !{i32 786688, metadata !28, metadata !"i", metadata !6, i32 8, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!36 = metadata !{i32 12, i32 2, metadata !24, null}
