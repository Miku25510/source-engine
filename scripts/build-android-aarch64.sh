#!/bin/sh
export ANDROID_NDK_HOME=$PWD/android-ndk-r10e/
export PATH="$PWD/clang+llvm-11.1.0-x86_64-linux-gnu-ubuntu-16.04/bin:$PATH"
# hl2 ->  Half-Life 2
# episodic  ->  Half-Life 2 Episode One And Two
# hl1       ->  Half Life: Source
# portal    ->  Portal
./waf configure -T release --build-game=hl2 --prefix=srceng-mod-launcher/android --android=aarch64,host,21 --target=../aarch64 --enable-opus --togles --disable-warns &&
./waf install --target=client,server --strip

if [ -e "srceng-mod-launcher/android/lib/arm64-v8a/README.md" ]; then
	rm srceng-mod-launcher/android/lib/arm64-v8a/README.md
fi
