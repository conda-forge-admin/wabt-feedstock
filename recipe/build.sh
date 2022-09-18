#!/bin/bash

export CMAKE_CONFIG="Release"

mkdir "build_${CMAKE_CONFIG}"
pushd "build_${CMAKE_CONFIG}"
cmake -G "Ninja" \
    -DCMAKE_BUILD_TYPE:STRING="${CMAKE_CONFIG}" \
    -DCMAKE_INSTALL_PREFIX:PATH="${PREFIX}" \
    -DCMAKE_POSITION_INDEPENDENT_CODE:BOOL=ON \
    -DBUILD_SHARED_LIBS:BOOL=ON \
    -DBUILD_TESTS:BOOL=OFF \
    "${SRC_DIR}"
ninja
ninja install
popd
