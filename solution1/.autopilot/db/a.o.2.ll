; ModuleID = 'D:/Vivado_HLS/ZYBO/multi_axim/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=8 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=2 type=[6 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@multi_axim.str = internal unnamed_addr constant [11 x i8] c"multi_axim\00" ; [#uses=1 type=[11 x i8]*]

; [#uses=0]
define i32 @multi_axim(i32* %x, i32* %y) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %x) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %y) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !23
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @multi_axim.str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %x}, i64 0, metadata !29), !dbg !30 ; [debug line = 3:21] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !31), !dbg !32 ; [debug line = 3:29] [debug variable = y]
  call void (...)* @_ssdm_op_SpecInterface(i32* %y, [6 x i8]* @.str, i32 0, i32 0, i32 0, i32 10, [1 x i8]* @.str1, [6 x i8]* @.str2, [1 x i8]* @.str1) nounwind, !dbg !33 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %x, [6 x i8]* @.str, i32 0, i32 0, i32 0, i32 10, [1 x i8]* @.str1, [6 x i8]* @.str2, [1 x i8]* @.str1) nounwind, !dbg !35 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !36 ; [debug line = 6:1]
  br label %1, !dbg !37                           ; [debug line = 8:14]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i, -6, !dbg !37         ; [#uses=1 type=i1] [debug line = 8:14]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %5, label %3, !dbg !37   ; [debug line = 8:14]

; <label>:3                                       ; preds = %1
  %tmp.3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @.str4) nounwind, !dbg !39 ; [#uses=1 type=i32] [debug line = 8:27]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !41 ; [debug line = 9:1]
  %tmp = zext i4 %i to i64, !dbg !42              ; [#uses=2 type=i64] [debug line = 10:2]
  %x.addr = getelementptr inbounds i32* %x, i64 %tmp, !dbg !42 ; [#uses=1 type=i32*] [debug line = 10:2]
  %x.load = load i32* %x.addr, align 4, !dbg !42  ; [#uses=2 type=i32] [debug line = 10:2]
  %tmp.1 = add nsw i32 %x.load, 1, !dbg !42       ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp.2 = mul nsw i32 %tmp.1, %x.load, !dbg !42  ; [#uses=1 type=i32] [debug line = 10:2]
  %y.addr = getelementptr inbounds i32* %y, i64 %tmp, !dbg !42 ; [#uses=1 type=i32*] [debug line = 10:2]
  store i32 %tmp.2, i32* %y.addr, align 4, !dbg !42 ; [debug line = 10:2]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @.str4, i32 %tmp.3) nounwind, !dbg !43 ; [#uses=0 type=i32] [debug line = 11:2]
  %i.1 = add i4 %i, 1, !dbg !44                   ; [#uses=1 type=i4] [debug line = 8:22]
  call void @llvm.dbg.value(metadata !{i4 %i.1}, i64 0, metadata !45), !dbg !44 ; [debug line = 8:22] [debug variable = i]
  br label %1, !dbg !44                           ; [debug line = 8:22]

; <label>:5                                       ; preds = %1
  ret i32 0, !dbg !46                             ; [debug line = 12:2]
}

; [#uses=3]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

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
!16 = metadata !{metadata !"x", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 9, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"y", metadata !17, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"return", metadata !27, metadata !"int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 1, i32 0}
!29 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777219, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 3, i32 21, metadata !5, null}
!31 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 33554435, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 3, i32 29, metadata !5, null}
!33 = metadata !{i32 4, i32 1, metadata !34, null}
!34 = metadata !{i32 786443, metadata !5, i32 3, i32 31, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 5, i32 1, metadata !34, null}
!36 = metadata !{i32 6, i32 1, metadata !34, null}
!37 = metadata !{i32 8, i32 14, metadata !38, null}
!38 = metadata !{i32 786443, metadata !34, i32 8, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 8, i32 27, metadata !40, null}
!40 = metadata !{i32 786443, metadata !38, i32 8, i32 26, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 9, i32 1, metadata !40, null}
!42 = metadata !{i32 10, i32 2, metadata !40, null}
!43 = metadata !{i32 11, i32 2, metadata !40, null}
!44 = metadata !{i32 8, i32 22, metadata !38, null}
!45 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !6, i32 8, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 12, i32 2, metadata !34, null}
