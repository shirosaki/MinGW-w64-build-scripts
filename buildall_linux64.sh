#!/usr/bin/env bash
set -e

echo "Checking sources' availability and up-to-dateness"
. ./scripts/updatesources.sh || exit 1

echo "Building Linux osx 64-bit to Windows 32-bit cross-compiler"
sh ./buildlinux64mingw32.sh || exit 1

export PATH=$PWD/linux64mingw32/mingw32/bin:$PATH

echo "Building Windows 32-bit to Windows 32-bit native compiler"
sh ./buildmingw32mingw32.sh || exit 1
