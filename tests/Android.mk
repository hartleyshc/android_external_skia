LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES:= \
  AAClipTest.cpp \
  AtomicTest.cpp \
  BitmapCopyTest.cpp \
  BitmapFactoryTest.cpp \
  BitmapGetColorTest.cpp \
  BitmapProcStateTest.cpp \
  Blitter_RGB16Test.cpp \
  BlitRowTest.cpp \
  BlurTest.cpp \
  ClampRangeTest.cpp \
  ClipCacheTest.cpp \
  ClipCubicTest.cpp \
  ClipStackTest.cpp \
  ClipperTest.cpp \
  ColorFilterTest.cpp \
  ColorTest.cpp \
  DataRefTest.cpp \
  DeferredCanvasTest.cpp \
  DequeTest.cpp \
  DrawBitmapRectTest.cpp \
  DrawPathTest.cpp \
  DrawTextTest.cpp \
  EmptyPathTest.cpp \
  FillPathTest.cpp \
  Filter32_Tests.cpp \
  FlateTest.cpp \
  FontHostStreamTest.cpp \
  FontHostTest.cpp \
  GeometryTest.cpp \
  GLInterfaceValidation.cpp \
  GLProgramsTest.cpp \
  GpuBitmapCopyTest.cpp \
  GrContextFactoryTest.cpp \
  GradientTest.cpp \
  GrMemoryPoolTest.cpp \
  HashCacheTest.cpp \
  InfRectTest.cpp \
  LListTest.cpp \
  MD5Test.cpp \
  MathTest.cpp \
  MatrixProcsTest.cpp \
  MatrixTest.cpp \
  Matrix44Test.cpp \
  MatrixTest.cpp \
  MemsetTest.cpp \
  MetaDataTest.cpp \
  PackBitsTest.cpp \
  PaintTest.cpp \
  ParsePathTest.cpp \
  PathCoverageTest.cpp \
  PathMeasureTest.cpp \
  PathTest.cpp \
  PictureTest.cpp \
  PipeTest.cpp \
  PointTest.cpp \
  PremulAlphaRoundTripTest.cpp \
  QuickRejectTest.cpp \
  Reader32Test.cpp \
  ReadPixelsTest.cpp \
  ReadWriteAlphaTest.cpp \
  RefCntTest.cpp \
  RefDictTest.cpp \
  RegionTest.cpp \
  S32_BlitRow_Tests.cpp \
  ScalarTest.cpp \
  ShaderOpacityTest.cpp \
  Sk64Test.cpp \
  skia_test.cpp \
  SortTest.cpp \
  SrcOverTest.cpp \
  StreamTest.cpp \
  StringTest.cpp \
  StrokeTest.cpp \
  Test.cpp \
  TestSize.cpp \
  TileGridTest.cpp \
  TLSTest.cpp \
  UnicodeTest.cpp \
  UtilsTest.cpp \
  WArrayTest.cpp \
  WritePixelsTest.cpp \
  Writer32Test.cpp \
  XfermodeTest.cpp

# Needed for PipeTest
LOCAL_SRC_FILES += \
  ../src/pipe/utils/SamplePipeControllers.cpp

# TODO: tests that currently are causing build problems
#LOCAL_SRC_FILES += \
#  AnnotationTest.cpp \
#  CanvasTest.cpp \
#  ChecksumTest.cpp \
#  PDFPrimitivesTest.cpp \
#  PictureUtilsTest.cpp \
#  ToUnicode.cpp

LOCAL_MODULE:= skia_test

LOCAL_C_INCLUDES := \
   external/freetype/include \
   external/skia/include/core \
   external/skia/include/config \
   external/skia/include/effects \
   external/skia/include/gpu \
   external/skia/include/images \
   external/skia/include/pipe \
   external/skia/include/ports \
   external/skia/include/utils \
   external/skia/src/core \
   external/skia/src/effects \
   external/skia/src/gpu \
   external/skia/src/pipe/utils \
   external/skia/src/utils

LOCAL_SHARED_LIBRARIES := libcutils libskia libGLESv2 libEGL

LOCAL_MODULE_TAGS := eng tests

include $(BUILD_EXECUTABLE)
