#!/bin/bash

LLVM_BUILD_DIR=$HOME/src/llvm-project/build-mlir

MLIR_DIR=${LLVM_BUILD_DIR}/lib/cmake/mlir
LLVM_EXTERNAL_LIT=${LLVM_BUILD_DIR}/bin/llvm-lit

# rm -rf build
MLIR_DIR=/home/hyunsungl/src/llvm-project/build-mlir/lib/cmake/mlir \
cmake -B build -S . \
-DLLVM_EXTERNAL_LIT=$LLVM_EXTERNAL_LIT \
-DCMAKE_EXPORT_COMPILE_COMMANDS=ON

cmake --build build #--target toyc
