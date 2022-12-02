@echo off
echo " This script help you clean so many fucking aosp & oos trash app"
echo " created by sUpErMaN"
cd %cd%/adb
adb.exe devices
adb.exe wait-for-device >NUL 2>NUL
adb.exe devices -l 
echo " Clean your phone " ;
adb shell pm uninstall --user 0 com.google.android.music
adb shell pm uninstall --user 0 com.google.android.videos
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm uninstall --user 0 com.heytap.mcs
adb shell pm uninstall -k --user 0 com.android.chrome
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
adb shell pm uninstall --user 0 com.google.android.apps.nbu.files
echo "Install gboard"
echo "you need to allow to install"

echo done
pause
