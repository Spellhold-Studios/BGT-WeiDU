#!/usr/bin/env bash

mkdir cmake-build-amd64-release
cd cmake-build-amd64-release
cmake .. -DCMAKE_CXX_FLAGS=-m64 -DCMAKE_C_FLAGS=-m64

make

cd ..
mv ./bin/tis2bg2.exe ../win32/amd64/tis2bg2.exe
