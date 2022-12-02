@echo off
cd %cd%/adb
adb.exe devices
adb.exe wait-for-device >NUL 2>NUL
adb.exe devices -l 
echo " A script I made to take remove unremovable apps on OxygenOS that are unuseful to me and unremovable. " ;
adb shell pm uninstall --user 0 com.google.android.music
adb shell pm uninstall --user 0 com.google.android.videos
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
adb shell pm uninstall --user 0 com.heytap.mcs
adb shell pm uninstall -k --user 0 com.android.chrome
adb shell pm uninstall -k --user 0 com.google.android.apps.photos
adb shell pm uninstall --user 0 com.google.android.apps.nbu.files
echo done
pause
