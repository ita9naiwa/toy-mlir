# toy-mlir

fixed to run on llvmorg-19.1.4

### Build instructions

I build standalone locally using:

```bash
# Clone LLVM (for building MLIR)
LLVM_SOURCE_DIR=$HOME/code/llvm-project
git clone https://github.com/llvm/llvm-project $LLVM_SOURCE_DIR

# Move to a known working commit (?)
git -C $LLVM_SOURCE_DIR checkout 555a71b

# Clone this repository, and switch to source-root
git clone https://github.com/jerinphilip/toy-mlir
cd toy-mlir

# Build MLIR to $LLVM_SOURCE_DIR/build-mlir
bash scripts/build-llvm-mlir.sh

# Build ToyC.
bash scripts/standalone-build.sh
```

The shell-scripts above assume the LLVM source is at `$HOME/code/llvm-project`.
You may look within the scripts and adapt for your use-case accordingly.
