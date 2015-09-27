; ModuleID = 'D:/Vivado_HLS/ZYBO/multi_axim/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=8 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@multi_axim_str = internal unnamed_addr constant [11 x i8] c"multi_axim\00" ; [#uses=1 type=[11 x i8]*]
@mode = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@bundle = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@mode1 = internal constant [10 x i8] c"s_axilite\00" ; [#uses=1 type=[10 x i8]*]
@bundle2 = internal constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]

; [#uses=4]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=0]
define i32 @multi_axim(i32* %gmem, i32 %x, i32 %y) {
  %y_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %y) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %y_read}, i64 0, metadata !1), !dbg !10 ; [debug line = 3:29] [debug variable = y]
  %x_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %x) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %x_read}, i64 0, metadata !11), !dbg !12 ; [debug line = 3:21] [debug variable = x]
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %y_read, i32 2, i32 31) ; [#uses=1 type=i30]
  %tmp_4 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %x_read, i32 2, i32 31) ; [#uses=1 type=i30]
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @multi_axim_str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !11), !dbg !12 ; [debug line = 3:21] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !1), !dbg !10 ; [debug line = 3:29] [debug variable = y]
  call void (...)* @_ssdm_op_SpecInterface(i32 %y, [10 x i8]* @mode1, i32 0, i32 0, i32 0, i32 10, [1 x i8]* @bundle2, [6 x i8]* @p_str2, [1 x i8]* @p_str1) nounwind, !dbg !26 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem, [6 x i8]* @p_str, i32 0, i32 0, i32 0, i32 10, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1) nounwind, !dbg !28 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %x, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 10, [1 x i8]* @bundle, [6 x i8]* @p_str2, [1 x i8]* @p_str1) nounwind, !dbg !28 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !29 ; [debug line = 6:1]
  %tmp_5 = zext i30 %tmp to i64, !dbg !30         ; [#uses=1 type=i64] [debug line = 10:2]
  %gmem_addr = getelementptr inbounds i32* %gmem, i64 %tmp_5, !dbg !30 ; [#uses=3 type=i32*] [debug line = 10:2]
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem_addr, i32 10), !dbg !30 ; [#uses=0 type=i1] [debug line = 10:2]
  %tmp_6 = zext i30 %tmp_4 to i64, !dbg !30       ; [#uses=1 type=i64] [debug line = 10:2]
  %gmem_addr_1 = getelementptr inbounds i32* %gmem, i64 %tmp_6, !dbg !30 ; [#uses=2 type=i32*] [debug line = 10:2]
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem_addr_1, i32 10), !dbg !30 ; [#uses=0 type=i1] [debug line = 10:2]
  br label %1, !dbg !33                           ; [debug line = 8:14]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=2 type=i4]
  %exitcond = icmp eq i4 %i, -6, !dbg !33         ; [#uses=1 type=i1] [debug line = 8:14]
  %i_1 = add i4 %i, 1, !dbg !34                   ; [#uses=1 type=i4] [debug line = 8:22]
  br i1 %exitcond, label %3, label %2, !dbg !33   ; [debug line = 8:14]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind ; [#uses=0 type=i32]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind, !dbg !35 ; [#uses=1 type=i32] [debug line = 8:27]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !36 ; [debug line = 9:1]
  %gmem_addr_1_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem_addr_1), !dbg !30 ; [#uses=2 type=i32] [debug line = 10:2]
  %tmp_1 = add nsw i32 %gmem_addr_1_read, 1, !dbg !30 ; [#uses=1 type=i32] [debug line = 10:2]
  %tmp_2 = mul nsw i32 %gmem_addr_1_read, %tmp_1, !dbg !30 ; [#uses=1 type=i32] [debug line = 10:2]
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem_addr, i32 %tmp_2, i4 -1), !dbg !30 ; [debug line = 10:2]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_3) nounwind, !dbg !37 ; [#uses=0 type=i32] [debug line = 11:2]
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !38), !dbg !34 ; [debug line = 8:22] [debug variable = i]
  br label %1, !dbg !34                           ; [debug line = 8:22]

; <label>:3                                       ; preds = %1
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem_addr), !dbg !30 ; [#uses=0 type=i1] [debug line = 10:2]
  ret i32 0, !dbg !39                             ; [debug line = 12:2]
}

; [#uses=2]
define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_5 = trunc i32 %empty to i30              ; [#uses=1 type=i30]
  ret i30 %empty_5
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak void @_ssdm_op_Write.m_axi.i32P(i32*, i32, i4) {
entry:
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.m_axi.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!axi4.master.portmap = !{!0}

!0 = metadata !{metadata !"gmem", metadata !"x", metadata !"READONLY", metadata !"y", metadata !"WRITEONLY"}
!1 = metadata !{i32 786689, metadata !2, metadata !"y", metadata !3, i32 33554435, metadata !7, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!2 = metadata !{i32 786478, i32 0, metadata !3, metadata !"multi_axim", metadata !"multi_axim", metadata !"", metadata !3, i32 3, metadata !4, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !8, i32 3} ; [ DW_TAG_subprogram ]
!3 = metadata !{i32 786473, metadata !"multi_axim/multi_axim.c", metadata !"d:/Vivado_HLS/ZYBO", null} ; [ DW_TAG_file_type ]
!4 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!5 = metadata !{metadata !6, metadata !7, metadata !7}
!6 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!7 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !6} ; [ DW_TAG_pointer_type ]
!8 = metadata !{metadata !9}
!9 = metadata !{i32 786468}                       ; [ DW_TAG_base_type ]
!10 = metadata !{i32 3, i32 29, metadata !2, null}
!11 = metadata !{i32 786689, metadata !2, metadata !"x", metadata !3, i32 16777219, metadata !7, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!12 = metadata !{i32 3, i32 21, metadata !2, null}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16, metadata !19}
!16 = metadata !{metadata !"x", metadata !17, metadata !"int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 9, i32 1}
!19 = metadata !{metadata !"y", metadata !17, metadata !"int", i32 0, i32 31}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"return", metadata !24, metadata !"int", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 1, i32 0}
!26 = metadata !{i32 4, i32 1, metadata !27, null}
!27 = metadata !{i32 786443, metadata !2, i32 3, i32 31, metadata !3, i32 0} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 5, i32 1, metadata !27, null}
!29 = metadata !{i32 6, i32 1, metadata !27, null}
!30 = metadata !{i32 10, i32 2, metadata !31, null}
!31 = metadata !{i32 786443, metadata !32, i32 8, i32 26, metadata !3, i32 2} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 786443, metadata !27, i32 8, i32 2, metadata !3, i32 1} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 8, i32 14, metadata !32, null}
!34 = metadata !{i32 8, i32 22, metadata !32, null}
!35 = metadata !{i32 8, i32 27, metadata !31, null}
!36 = metadata !{i32 9, i32 1, metadata !31, null}
!37 = metadata !{i32 11, i32 2, metadata !31, null}
!38 = metadata !{i32 786688, metadata !32, metadata !"i", metadata !3, i32 8, metadata !6, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!39 = metadata !{i32 12, i32 2, metadata !27, null}
