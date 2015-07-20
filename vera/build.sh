hash -r

mkdir build
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DVERA_LUA=OFF \
    -DVERA_USE_SYSTEM_BOOST=ON \
    -DVERA_USE_SYSTEM_PYTHON=ON \
    -DBOOST_ROOT=$PREFIX \
    -DBoost_NO_SYSTEM_PATHS=True \
    ..



make -j$CPU_COUNT

make install
