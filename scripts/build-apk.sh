export ICON=te120.png
export PACKAGE=te120
export APP_NAME="Transmissions: Element 120"
cd srceng-mod-launcher
git clone https://gitlab.com/LostGamer/android-sdk
export ANDROID_SDK_HOME=$PWD/android-sdk
git pull
chmod +x android/script.sh
./android/scripts/script.sh
chmod +x waf
./waf configure -T release &&
./waf build
