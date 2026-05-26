@echo off
chcp 65001 > nul
cd /d "%~dp0"
echo 보험보상 분석기 APK 빌드를 시작합니다.
echo Android Studio 또는 Gradle이 설치되어 있어야 합니다.

gradle assembleDebug

if errorlevel 1 (
  echo.
  echo 빌드 실패: Android Studio에서 이 폴더를 열어 Build APK(s)를 실행하십시오.
  pause
  exit /b 1
)

echo.
echo 빌드 완료: app\build\outputs\apk\debug\app-debug.apk
pause
