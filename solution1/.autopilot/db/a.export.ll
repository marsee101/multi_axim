; ModuleID = 'D:/Vivado_HLS/ZYBO/multi_axim/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@multi_axim_str = internal unnamed_addr constant [11 x i8] c"multi_axim\00"
@mode = internal constant [10 x i8] c"s_axilite\00"
@bundle = internal constant [1 x i8] zeroinitializer
@mode1 = internal constant [10 x i8] c"s_axilite\00"
@bundle2 = internal constant [1 x i8] zeroinitializer

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define i32 @multi_axim(i32* %gmem, i32 %x, i32 %y) {
  %y_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %y)
  %x_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %x)
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %y_read, i32 2, i32 31)
  %tmp_4 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %x_read, i32 2, i32 31)
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %gmem), !map !1
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !8
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @multi_axim_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %y, [10 x i8]* @mode1, i32 0, i32 0, i32 0, i32 10, [1 x i8]* @bundle2, [6 x i8]* @p_str2, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %gmem, [6 x i8]* @p_str, i32 0, i32 0, i32 0, i32 10, [1 x i8]* @p_str1, [6 x i8]* @p_str2, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %x, [10 x i8]* @mode, i32 0, i32 0, i32 0, i32 10, [1 x i8]* @bundle, [6 x i8]* @p_str2, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp_5 = zext i30 %tmp to i64
  %gmem_addr = getelementptr inbounds i32* %gmem, i64 %tmp_5
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i32P(i32* %gmem_addr, i32 10)
  %tmp_6 = zext i30 %tmp_4 to i64
  %gmem_addr_1 = getelementptr inbounds i32* %gmem, i64 %tmp_6
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i32P(i32* %gmem_addr_1, i32 10)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i4 %i, -6
  %i_1 = add i4 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %gmem_addr_1_read = call i32 @_ssdm_op_Read.m_axi.i32P(i32* %gmem_addr_1)
  %tmp_1 = add nsw i32 %gmem_addr_1_read, 1
  %tmp_2 = mul nsw i32 %gmem_addr_1_read, %tmp_1
  call void @_ssdm_op_Write.m_axi.i32P(i32* %gmem_addr, i32 %tmp_2, i4 -1)
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_3) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i32P(i32* %gmem_addr)
  ret i32 0
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i30
  ret i30 %empty_5
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i32P(i32*, i32, i4) {
entry:
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i32P(i32*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.m_axi.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!axi4.master.portmap = !{!0}

!0 = metadata !{metadata !"gmem", metadata !"x", metadata !"READONLY", metadata !"y", metadata !"WRITEONLY"}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4, metadata !7}
!4 = metadata !{metadata !"x", metadata !5, metadata !"int", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 9, i32 1}
!7 = metadata !{metadata !"y", metadata !5, metadata !"int", i32 0, i32 31}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"return", metadata !12, metadata !"int", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 1, i32 0}
