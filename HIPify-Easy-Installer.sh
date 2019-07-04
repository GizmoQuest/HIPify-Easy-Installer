#MIT License

#Copyright (c) 2019 GizmoQuest Computing Lab

#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:

#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.

#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.

#!/bin/bash
#HIPify - a unique tool from ROCm to easily convert CUDA code into HIP. 
#1. First, install all dependencies to install and run hipify:
sudo apt update
sudo apt -y install git cmake clang-6.0 libclang-6.0-dev libclang-perl libclanlib-dev libclang-dev zlib1g-dev llvm-6.0 llvm-6.0-dev llvm-6.0-runtime
git clone https://github.com/GPUOpen-ProfessionalCompute-Tools/HIP HIP
cd HIP/hipify-clang/
mkdir build dist
cd build
cmake \
-DCMAKE_INSTALL_PREFIX=../dist \
-DCMAKE_BUILD_TYPE=Release \
..
#2. Now, install hipify in the same build location:
make -j install
#3. To set up the hipify command, use the following command:
echo 'alias hipify=~/HIP/hipify-clang/dist/bin/./hipify-clang' >> ~/.bashrc
#Reload the Bash shell:
. ~/.bashrc
cd ~
echo "Now you can run HIPify as 'hipify CUDA-program.cu -o HIP-program.cpp'"
echo "For more usage information, use 'hipify --help'"
