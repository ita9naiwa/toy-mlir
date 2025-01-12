# run from root of llvm-project repo
build_llvm=build-llvm
build_mlir=build-mlir
installprefix=install
mkdir -p $build_llvm
mkdir -p $installprefix


cmake -G Ninja -S llvm -B $build_llvm \
      -DLLVM_INSTALL_UTILS=ON \
      -DCMAKE_INSTALL_PREFIX=$installprefix \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
      -DLLVM_INCLUDE_EXAMPLES=ON

cmake --build $build_llvm --target install --parallel 12

cmake -G Ninja -S mlir -B $build_mlir \
      -DLLVM_EXTERNAL_LIT=$build_llvm/utils/lit \
      -DLLVM_ROOT=$installprefix \
      -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
      -DLLVM_INCLUDE_EXAMPLES=ON

cmake --build $build_mlir --target install --parallel 12
