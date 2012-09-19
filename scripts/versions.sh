#!/usr/bin/env bash
set -e

# versions of different packages (prefix RUBENVB to prevent conflict with macros)
export RUBENVB_GCC_VERSION="4.7.2-release"
export RUBENVB_CLANG_VERSION="3.1"

export RUBENVB_PACKAGE_OPTIONS="--with-pkgversion=rubenvb-$RUBENVB_GCC_VERSION --with-bugurl=mingw-w64-public@lists.sourceforge.net"

export LIBICONV_VERSION=1.14
export EXPAT_VERSION=2.1.0
export GMP_VERSION=5.0.5
export MPFR_VERSION=3.1.1
export MPC_VERSION=1.0.1
export PPL_VERSION=1.0
export CLOOG_VERSION=0.17.0
export ISL_VERSION=0.10
export MAKE_VERSION=3.82
export BINUTILS_VERSION=2.22
export GDB_VERSION=7.5
export MINGW64_VERSION=v2.0.6
export GCC_VERSION=4.7.1
