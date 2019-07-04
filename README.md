# HIPify-Easy-Installer
To enable easy installation of HIPify to be able to port CUDA code to ROCm HIP. Works on Ubuntu 18.04 LTS Linux.

[HIPify](https://github.com/ROCm-Developer-Tools/HIP/tree/master/hipify-clang) is a unique tool that makes cross-platform portability possible by converting a [CUDA](https://developer.nvidia.com/cuda-zone) (.cu) file into [ROCm](https://rocm.github.io) HIP(.cpp). ROCm HIP can be used on both NVIDIA and AMD GPUs.

Installing HIPify from source can be a bit complicated for novice users. So an easy-to-deploy Open Source installer for the same was released to make the process more convenient.

Both HIPify and ROCm have been covered step-by-step in the book: [Hands-On GPU Computing With Python](https://amzn.to/2YxrLTl).

The installer has been developed, tested and released on GitHub that makes the HIPify installation a breeze❤️! It's been tested on Google Colabolatory as well! Hope this encourages more and more people to use HIPify. Cheers to ROCm 🤘!!

To make sure the HIPify installer runs with the necessary changes for the current working directory, use the following commands from a Terminal: 

1.`chmod +x HIPify-installer.sh`

2.`. HIPify-installer.sh` or `source HIPify-installer.sh` (NOT `./HIPify-installer.sh`)
