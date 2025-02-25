//===- Passes.h - Toy Passes Definition -----------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file exposes the entry points to create compiler passes for Toy.
//
//===----------------------------------------------------------------------===//

#ifndef TOY_PASSES_H
#define TOY_PASSES_H

#include <memory>

namespace mlir {
class Pass;

namespace toy {
  //  Just Print CFG and do nothig more.
  // std::unique_ptr<Pass> createCreateCFGPass();

  std::unique_ptr<Pass> createShapeInferencePass();

  /// Create a pass for lowering to operations in the `Affine` and `Std` dialects,
  /// for a subset of the Toy IR (e.g. matmul).
  std::unique_ptr<mlir::Pass> createLowerToAffinePass();

  /// Create a pass for lowering operations the remaining `Toy` operations, as
  /// well as `Affine` and `Std`, to the LLVM dialect for codegen.
  std::unique_ptr<mlir::Pass> createLowerToLLVMPass();

} // namespace toy
} // namespace mlir

#endif // TOY_PASSES_H
