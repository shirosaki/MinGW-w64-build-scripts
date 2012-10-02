#!/usr/bin/env bash
set -e

export BUILD="x86_64-apple-darwin11"

echo "Checking sources' availability and up-to-dateness"
. ./scripts/updatesources.sh || exit 1

echo "Building mac osx 64-bit to Windows 32-bit cross-compiler"
sh ./buildmac64mingw32native.sh || exit 1
#echo "Building mac osx 64-bit to Windows 64-bit cross-compiler"
#sh ./buildmac64mingw64native.sh || exit 1

export PATH=$PWD/mac64mingw32/mingw32/bin:$PWD/mac64mingw64/mingw64/bin:$PATH

echo "Building Windows 32-bit to Windows 32-bit native compiler"
sh ./buildmingw32mingw32.sh || exit 1
#echo "Building Windows 64-bit to Windows 64-bit native compiler"
#sh ./buildmingw64mingw64.sh || exit 1
