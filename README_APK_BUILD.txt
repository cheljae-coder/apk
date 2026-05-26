보험보상 분석기 APK 빌드 안내

1. 이 폴더 전체를 압축 해제합니다.
2. Android Studio를 실행합니다.
3. File > Open을 누릅니다.
4. 이 폴더(InsuranceAnalyzer_WebView_APK_Project)를 선택합니다.
5. Gradle Sync가 끝날 때까지 기다립니다.
6. 상단 메뉴에서 Build > Build Bundle(s) / APK(s) > Build APK(s)를 누릅니다.
7. 생성 위치는 app/build/outputs/apk/debug/app-debug.apk 입니다.
8. app-debug.apk를 스마트폰으로 옮겨 설치합니다.

중요:
- 이 프로젝트 안의 실제 HTML 본체는 app/src/main/assets/index.html 입니다.
- 새 HTML로 교체하려면 같은 위치의 index.html만 바꾸고 다시 Build APK(s)를 실행하면 됩니다.
- OCR/PDF/DOCX 외부 라이브러리를 CDN으로 불러오는 기능은 스마트폰에서 인터넷 연결이 필요할 수 있습니다.
- 만약 Android Studio에서 Gradle Plugin 버전 오류가 나오면 Android Studio를 최신 버전으로 업데이트하거나, app/build.gradle의 compileSdk와 targetSdk를 설치된 SDK 버전에 맞춰 조정하십시오.
