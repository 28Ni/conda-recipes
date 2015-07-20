hash -r

mkdir build
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DVERA_USE_SYSTEM_BOOST=ON \
    -DVERA_USE_SYSTEM_LUA=ON \
    -DVERA_USE_SYSTEM_PYTHON=ON \
    ..


make -j$CPU_COUNT

make install
