#! /bin/sh
cd cmake

/Users/chenhao/Library/Android/sdk/cmake/3.18.1/bin/cmake \
	-Dprotobuf_BUILD_SHARED_LIBS=OFF \
	-Dprotobuf_BUILD_STATIC_LIBS=ON \
	-DCMAKE_VERBOSE_MAKEFILE=ON \
	-Dprotobuf_BUILD_TEST=OFF \
	-Dprotobuf_BUILD_EXAMPLES=OFF \
	-DCMAKE_TOOLCHAIN_FILE=/Users/chenhao/Library/Android/sdk/ndk/21.1.6352462/build/cmake/android.toolchain.cmake \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX=/Users/chenhao/Documents/dev/protobuf/cmake/build/armeabi-v7a  \
	-DANDROID_NDK=/Users/chenhao/Library/Android/sdk/ndk/21.1.6352462 \
	-DANDROID_TOOLCHAIN=c++11 \
	-DANDROID_ABI=armeabi-v7a \
	-DANDROID_NATIVE_API_LEVEL=21 \
	-DANDROID_STL=c++_shared \
	-DANDROID_LINKER_FLAGS="-landroid -llog" \
	-DANDROID_CPP_FEATURES="rtti exceptions" \
	.

# Step 4. Run Make with generated Makefile.
/Users/chenhao/Library/Android/sdk/cmake/3.18.1/bin/cmake --build .

# Step 5 (optional). Install the generated header files and shared library 
# to specific folder.
make clean
make install