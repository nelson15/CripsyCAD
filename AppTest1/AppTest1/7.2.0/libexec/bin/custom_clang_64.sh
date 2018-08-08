#!/bin/bash

if [ "$1" == "" ]; then
  if [ "$2" == "64" ]; then
    # set environment variables used by OCCT
    export CSF_FPE=0

    export TCL_DIR="/usr/lib"
    export TK_DIR="/usr/lib"
    export FREETYPE_DIR="/usr/local/opt/freetype/lib"
    export FREEIMAGE_DIR="/usr/local/opt/freeimage/lib:"
    export GL2PS_DIR="/usr/local/opt/gl2ps/lib:"
    export TBB_DIR="/usr/local/opt/tbb/lib"
    export VTK_DIR=""
    export FFMPEG_DIR=""

    if [ "x" != "x" ]; then
      export QTDIR=""
    fi

    export TCL_VERSION_WITH_DOT=""
    export TK_VERSION_WITH_DOT=""

    export CSF_OCCTBinPath="${CASROOT}/bin"
    export CSF_OCCTLibPath="${CASROOT}/lib"
    export CSF_OCCTIncludePath="${CASROOT}/include/opencascade"
    export CSF_OCCTResourcePath="${CASROOT}/share/opencascade/resources"
    export CSF_OCCTDataPath="${CASROOT}/share/opencascade/data"
    export CSF_OCCTSamplesPath="${CASROOT}/share/opencascade/samples"
    export CSF_OCCTTestsPath="${CASROOT}/share/opencascade/tests"
    export CSF_OCCTDocPath="${CASROOT}/share/doc/opencascade"
  fi
fi

