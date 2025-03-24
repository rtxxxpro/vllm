export MAX_JOBS=32
export CMAKE_BUILD_TYPE=Release
export VLLM_ATTENTION_BACKEND=FLASHINFER
export TORCH_CUDA_ARCH_LIST="8.0"
export CMAKE_CUDA_COMPILER="/home/rtx/nvidia/llvm-project/install/bin/clang++"
export CMAKE_CXX_COMPILER="/home/rtx/nvidia/llvm-project/install/bin/clang++"
export CMAKE_C_COMPILER="/home/rtx/nvidia/llvm-project/install/bin/clang"
export CMAKE_CUDA_FLAGS="-nostdinc++ -I/home/rtx/nvidia/llvm-project/install/include/c++/v1 -I/home/rtx/nvidia/llvm-project/install/include/x86_64-unknown-linux-gnu/c++/v1 -I/home/rtx/nvidia/cccl/thrust -I/home/rtx/nvidia/cccl/libcudacxx/include -I/home/rtx/nvidia/cccl/cub --cuda-gpu-arch=sm_80 -std=c++17 -O3 -fplugin=/home/rtx/nvidia/sm-sched/smsched-pass/build/libsmsched.so -fpass-plugin=/home/rtx/nvidia/sm-sched/smsched-pass/build/libsmsched.so -mllvm -enable-dump-ir -mllvm -dump-ir-dir=$(pwd)/ir  -D__NVCC__ -D__CUDACC_VER_MAJOR__=12 -D__CUDACC_VER_MINOR__=4 -D__NV_NO_HOST_COMPILER_CHECK -D_ALLOW_UNSUPPORTED_LIBCPP -D_VSTD=std -Wno-invalid-specialization -g"
export CMAKE_CXX_FLAGS="-nostdinc++ -I/home/rtx/nvidia/llvm-project/install/include/c++/v1 -I/home/rtx/nvidia/llvm-project/install/include/x86_64-unknown-linux-gnu/c++/v1 -D_VSTD=std -Wno-error=missing-template-arg-list-after-template-kw -Wno-invalid-specialization"
export CMAKE_EXE_LINKER_FLAGS="-L/usr/local/cuda/lib64 -stdlib=libc++ -lc++ -lc++abi -lcudart -lcuda -lgdrapi"
export CMAKE_SHARED_LINKER_FLAGS="-L/usr/local/cuda/lib64 -stdlib=libc++ -lc++ -lc++abi -lcudart -lcuda -lgdrapi"
# python use_existing_torch.py
# pip install -r requirements/build.txt
python setup.py develop