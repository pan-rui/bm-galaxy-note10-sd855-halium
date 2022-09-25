#!/usr/bin/env nix-shell
#!nix-shell make-env.nix -i bash
make O=$PWD/out DTC_EXT=$PWD/tools/dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y ARCH=arm64 CROSS_COMPILE=$PWD/toolchain/aarch64-linux-android-4.9/bin/aarch64-linux-android- REAL_CC=$PWD/toolchain/llvm-arm-toolchain-ship/8.0/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- "$@"
