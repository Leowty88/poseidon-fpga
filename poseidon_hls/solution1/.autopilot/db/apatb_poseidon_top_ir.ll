; ModuleID = '/home/bcs7944/poseidon-fpga/poseidon_hls/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<axis_word, 0>" = type { %struct.axis_word }
%struct.axis_word = type { %"struct.ap_uint<256>", %"struct.ap_uint<1>", %"struct.ap_uint<32>" }
%"struct.ap_uint<256>" = type { %"struct.ap_int_base<256, false>" }
%"struct.ap_int_base<256, false>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_poseidon_top_ir(%"class.hls::stream<axis_word, 0>"* noalias nocapture nonnull dereferenceable(64) %in_stream, %"class.hls::stream<axis_word, 0>"* noalias nocapture nonnull dereferenceable(64) %out_stream, %"struct.ap_uint<256>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1632" "maxi" %round_constants, [24 x %"struct.ap_uint<256>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="24" "maxi" %mds_matrix) local_unnamed_addr #1 {
entry:
  %in_stream_copy = alloca %"class.hls::stream<axis_word, 0>", align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(%"class.hls::stream<axis_word, 0>"* %in_stream_copy, i32 0) ]
  %out_stream_copy = alloca %"class.hls::stream<axis_word, 0>", align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(%"class.hls::stream<axis_word, 0>"* %out_stream_copy, i32 0) ]
  %malloccall = call i8* @malloc(i64 52224)
  %round_constants_copy = bitcast i8* %malloccall to [1632 x i256]*
  %malloccall1 = call i8* @malloc(i64 18432)
  %mds_matrix_copy = bitcast i8* %malloccall1 to [24 x [24 x i256]]*
  %0 = bitcast %"struct.ap_uint<256>"* %round_constants to [1632 x %"struct.ap_uint<256>"]*
  %1 = bitcast [24 x %"struct.ap_uint<256>"]* %mds_matrix to [24 x [24 x %"struct.ap_uint<256>"]]*
  call fastcc void @copy_in(%"class.hls::stream<axis_word, 0>"* nonnull %in_stream, %"class.hls::stream<axis_word, 0>"* nonnull align 512 %in_stream_copy, %"class.hls::stream<axis_word, 0>"* nonnull %out_stream, %"class.hls::stream<axis_word, 0>"* nonnull align 512 %out_stream_copy, [1632 x %"struct.ap_uint<256>"]* nonnull %0, [1632 x i256]* %round_constants_copy, [24 x [24 x %"struct.ap_uint<256>"]]* nonnull %1, [24 x [24 x i256]]* %mds_matrix_copy)
  call void @apatb_poseidon_top_hw(%"class.hls::stream<axis_word, 0>"* %in_stream_copy, %"class.hls::stream<axis_word, 0>"* %out_stream_copy, [1632 x i256]* %round_constants_copy, [24 x [24 x i256]]* %mds_matrix_copy)
  call void @copy_back(%"class.hls::stream<axis_word, 0>"* %in_stream, %"class.hls::stream<axis_word, 0>"* %in_stream_copy, %"class.hls::stream<axis_word, 0>"* %out_stream, %"class.hls::stream<axis_word, 0>"* %out_stream_copy, [1632 x %"struct.ap_uint<256>"]* %0, [1632 x i256]* %round_constants_copy, [24 x [24 x %"struct.ap_uint<256>"]]* %1, [24 x [24 x i256]]* %mds_matrix_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<axis_word, 0>"* noalias "unpacked"="0", %"class.hls::stream<axis_word, 0>"* noalias align 512 "unpacked"="1", %"class.hls::stream<axis_word, 0>"* noalias "unpacked"="2", %"class.hls::stream<axis_word, 0>"* noalias align 512 "unpacked"="3", [1632 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="4", [1632 x i256]* noalias nocapture "unpacked"="5.0", [24 x [24 x %"struct.ap_uint<256>"]]* noalias readonly "unpacked"="6", [24 x [24 x i256]]* noalias "unpacked"="7") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_word, 0>"(%"class.hls::stream<axis_word, 0>"* align 512 %1, %"class.hls::stream<axis_word, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_word, 0>"(%"class.hls::stream<axis_word, 0>"* align 512 %3, %"class.hls::stream<axis_word, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0a1632struct.ap_uint<256>"([1632 x i256]* %5, [1632 x %"struct.ap_uint<256>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a24a24struct.ap_uint<256>.52"([24 x [24 x i256]]* %7, [24 x [24 x %"struct.ap_uint<256>"]]* %6)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_word, 0>"(%"class.hls::stream<axis_word, 0>"* noalias align 512 %dst, %"class.hls::stream<axis_word, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<axis_word, 0>"* %dst, null
  %1 = icmp eq %"class.hls::stream<axis_word, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<axis_word, 0>"(%"class.hls::stream<axis_word, 0>"* nonnull align 512 %dst, %"class.hls::stream<axis_word, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<axis_word, 0>"(%"class.hls::stream<axis_word, 0>"* noalias nocapture align 512, %"class.hls::stream<axis_word, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<axis_word, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<axis_word, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_64(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<axis_word, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<axis_word, 0>"* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<axis_word, 0>", %"class.hls::stream<axis_word, 0>"* %2
  %8 = bitcast %"class.hls::stream<axis_word, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<axis_word, 0>"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1632struct.ap_uint<256>"([1632 x i256]* noalias nocapture "unpacked"="0.0" %dst, [1632 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq [1632 x %"struct.ap_uint<256>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1632struct.ap_uint<256>"([1632 x i256]* %dst, [1632 x %"struct.ap_uint<256>"]* nonnull %src, i64 1632)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1632struct.ap_uint<256>"([1632 x i256]* nocapture "unpacked"="0.0" %dst, [1632 x %"struct.ap_uint<256>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [1632 x %"struct.ap_uint<256>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1632 x %"struct.ap_uint<256>"], [1632 x %"struct.ap_uint<256>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1632 x i256], [1632 x i256]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %1, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a24a24struct.ap_uint<256>"([24 x [24 x %"struct.ap_uint<256>"]]* noalias %dst, [24 x [24 x i256]]* noalias readonly %src) unnamed_addr #5 {
entry:
  %0 = icmp eq [24 x [24 x %"struct.ap_uint<256>"]]* %dst, null
  %1 = icmp eq [24 x [24 x i256]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a24a24struct.ap_uint<256>"([24 x [24 x %"struct.ap_uint<256>"]]* nonnull %dst, [24 x [24 x i256]]* nonnull %src, i64 24)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a24a24struct.ap_uint<256>"([24 x [24 x %"struct.ap_uint<256>"]]* %dst, [24 x [24 x i256]]* readonly %src, i64 %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [24 x [24 x i256]]* %src, null
  %1 = icmp eq [24 x [24 x %"struct.ap_uint<256>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [24 x [24 x %"struct.ap_uint<256>"]], [24 x [24 x %"struct.ap_uint<256>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [24 x [24 x i256]], [24 x [24 x i256]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a24struct.ap_uint<256>"([24 x %"struct.ap_uint<256>"]* %dst.addr, [24 x i256]* %3, i64 24)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a24struct.ap_uint<256>"([24 x %"struct.ap_uint<256>"]* %dst, [24 x i256]* readonly %src, i64 %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [24 x i256]* %src, null
  %1 = icmp eq [24 x %"struct.ap_uint<256>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [24 x i256], [24 x i256]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [24 x %"struct.ap_uint<256>"], [24 x %"struct.ap_uint<256>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i256, i256* %3, align 32
  store i256 %4, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<axis_word, 0>"* noalias "unpacked"="0", %"class.hls::stream<axis_word, 0>"* noalias align 512 "unpacked"="1", %"class.hls::stream<axis_word, 0>"* noalias "unpacked"="2", %"class.hls::stream<axis_word, 0>"* noalias align 512 "unpacked"="3", [1632 x %"struct.ap_uint<256>"]* noalias "unpacked"="4", [1632 x i256]* noalias nocapture readonly "unpacked"="5.0", [24 x [24 x %"struct.ap_uint<256>"]]* noalias "unpacked"="6", [24 x [24 x i256]]* noalias readonly "unpacked"="7") unnamed_addr #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_word, 0>"(%"class.hls::stream<axis_word, 0>"* %0, %"class.hls::stream<axis_word, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_word, 0>"(%"class.hls::stream<axis_word, 0>"* %2, %"class.hls::stream<axis_word, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a1632struct.ap_uint<256>.40"([1632 x %"struct.ap_uint<256>"]* %4, [1632 x i256]* %5)
  call fastcc void @"onebyonecpy_hls.p0a24a24struct.ap_uint<256>"([24 x [24 x %"struct.ap_uint<256>"]]* %6, [24 x [24 x i256]]* %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1632struct.ap_uint<256>.40"([1632 x %"struct.ap_uint<256>"]* noalias "unpacked"="0" %dst, [1632 x i256]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq [1632 x %"struct.ap_uint<256>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1632struct.ap_uint<256>.43"([1632 x %"struct.ap_uint<256>"]* nonnull %dst, [1632 x i256]* %src, i64 1632)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1632struct.ap_uint<256>.43"([1632 x %"struct.ap_uint<256>"]* "unpacked"="0" %dst, [1632 x i256]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [1632 x %"struct.ap_uint<256>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1632 x i256], [1632 x i256]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [1632 x %"struct.ap_uint<256>"], [1632 x %"struct.ap_uint<256>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %1, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a24a24struct.ap_uint<256>.52"([24 x [24 x i256]]* noalias %dst, [24 x [24 x %"struct.ap_uint<256>"]]* noalias readonly %src) unnamed_addr #5 {
entry:
  %0 = icmp eq [24 x [24 x i256]]* %dst, null
  %1 = icmp eq [24 x [24 x %"struct.ap_uint<256>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a24a24struct.ap_uint<256>.55"([24 x [24 x i256]]* nonnull %dst, [24 x [24 x %"struct.ap_uint<256>"]]* nonnull %src, i64 24)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a24a24struct.ap_uint<256>.55"([24 x [24 x i256]]* %dst, [24 x [24 x %"struct.ap_uint<256>"]]* readonly %src, i64 %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [24 x [24 x %"struct.ap_uint<256>"]]* %src, null
  %1 = icmp eq [24 x [24 x i256]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [24 x [24 x i256]], [24 x [24 x i256]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [24 x [24 x %"struct.ap_uint<256>"]], [24 x [24 x %"struct.ap_uint<256>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a24struct.ap_uint<256>.58"([24 x i256]* %3, [24 x %"struct.ap_uint<256>"]* %src.addr, i64 24)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a24struct.ap_uint<256>.58"([24 x i256]* %dst, [24 x %"struct.ap_uint<256>"]* readonly %src, i64 %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [24 x %"struct.ap_uint<256>"]* %src, null
  %1 = icmp eq [24 x i256]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [24 x %"struct.ap_uint<256>"], [24 x %"struct.ap_uint<256>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [24 x i256], [24 x i256]* %dst, i64 0, i64 %for.loop.idx8
  %4 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %4, i256* %3, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_poseidon_top_hw(%"class.hls::stream<axis_word, 0>"*, %"class.hls::stream<axis_word, 0>"*, [1632 x i256]*, [24 x [24 x i256]]*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<axis_word, 0>"* noalias "unpacked"="0", %"class.hls::stream<axis_word, 0>"* noalias align 512 "unpacked"="1", %"class.hls::stream<axis_word, 0>"* noalias "unpacked"="2", %"class.hls::stream<axis_word, 0>"* noalias align 512 "unpacked"="3", [1632 x %"struct.ap_uint<256>"]* noalias "unpacked"="4", [1632 x i256]* noalias nocapture readonly "unpacked"="5.0", [24 x [24 x %"struct.ap_uint<256>"]]* noalias "unpacked"="6", [24 x [24 x i256]]* noalias readonly "unpacked"="7") unnamed_addr #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_word, 0>"(%"class.hls::stream<axis_word, 0>"* %0, %"class.hls::stream<axis_word, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_word, 0>"(%"class.hls::stream<axis_word, 0>"* %2, %"class.hls::stream<axis_word, 0>"* align 512 %3)
  ret void
}

define void @poseidon_top_hw_stub_wrapper(%"class.hls::stream<axis_word, 0>"*, %"class.hls::stream<axis_word, 0>"*, [1632 x i256]*, [24 x [24 x i256]]*) #8 {
entry:
  %malloccall = tail call i8* @malloc(i64 52224)
  %4 = bitcast i8* %malloccall to [1632 x %"struct.ap_uint<256>"]*
  %malloccall1 = tail call i8* @malloc(i64 18432)
  %5 = bitcast i8* %malloccall1 to [24 x [24 x %"struct.ap_uint<256>"]]*
  call void @copy_out(%"class.hls::stream<axis_word, 0>"* null, %"class.hls::stream<axis_word, 0>"* %0, %"class.hls::stream<axis_word, 0>"* null, %"class.hls::stream<axis_word, 0>"* %1, [1632 x %"struct.ap_uint<256>"]* %4, [1632 x i256]* %2, [24 x [24 x %"struct.ap_uint<256>"]]* %5, [24 x [24 x i256]]* %3)
  %6 = bitcast [1632 x %"struct.ap_uint<256>"]* %4 to %"struct.ap_uint<256>"*
  %7 = bitcast [24 x [24 x %"struct.ap_uint<256>"]]* %5 to [24 x %"struct.ap_uint<256>"]*
  call void @poseidon_top_hw_stub(%"class.hls::stream<axis_word, 0>"* %0, %"class.hls::stream<axis_word, 0>"* %1, %"struct.ap_uint<256>"* %6, [24 x %"struct.ap_uint<256>"]* %7)
  call void @copy_in(%"class.hls::stream<axis_word, 0>"* null, %"class.hls::stream<axis_word, 0>"* %0, %"class.hls::stream<axis_word, 0>"* null, %"class.hls::stream<axis_word, 0>"* %1, [1632 x %"struct.ap_uint<256>"]* %4, [1632 x i256]* %2, [24 x [24 x %"struct.ap_uint<256>"]]* %5, [24 x [24 x i256]]* %3)
  ret void
}

declare void @poseidon_top_hw_stub(%"class.hls::stream<axis_word, 0>"*, %"class.hls::stream<axis_word, 0>"*, %"struct.ap_uint<256>"*, [24 x %"struct.ap_uint<256>"]*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #7 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="512" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
