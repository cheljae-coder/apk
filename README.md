# InsuranceAnalyzer GitHub APK Builder

이 프로젝트는 보험보상 분석 HTML 프로그램을 Android WebView 앱으로 감싸고, GitHub Actions에서 자동으로 APK 설치파일을 생성하도록 구성한 프로젝트입니다.

## 핵심 구조

```text
.github/workflows/build-apk.yml
→ GitHub Actions 자동 APK 빌드 설정

app/src/main/assets/index.html
→ 보험보상 분석 프로그램 본체 HTML

app/src/main/java/com/cheljae/insuranceanalyzer/MainActivity.java
→ Android WebView 실행 코드

app/src/main/AndroidManifest.xml
→ 앱 이름, 권한, 실행 Activity 설정
```

## GitHub에 올리는 방법

1. GitHub에 새 저장소를 만듭니다.
2. 이 폴더 안의 파일 전체를 저장소에 업로드합니다.
3. 반드시 다음 파일이 루트에 보여야 합니다.

```text
settings.gradle
build.gradle
gradle.properties
app/build.gradle
.github/workflows/build-apk.yml
```

4. GitHub 저장소 상단의 Actions 메뉴를 누릅니다.
5. Build Android APK 워크플로우를 선택합니다.
6. Run workflow 버튼을 누릅니다.
7. 빌드가 끝나면 작업 상세 화면 하단 Artifacts에서 `insurance-analyzer-debug-apk`를 다운로드합니다.
8. 다운로드한 zip을 풀면 `app-debug.apk`가 있습니다.
9. 이 APK를 스마트폰으로 옮겨 설치합니다.

## APK 설치 안내

스마트폰에서 APK 설치 시 “알 수 없는 앱 설치 허용”을 요구할 수 있습니다. 허용 후 설치하면 됩니다.

## HTML 수정 후 다시 APK 만들기

1. `app/src/main/assets/index.html` 파일을 새 HTML로 교체합니다.
2. GitHub에 다시 업로드 또는 커밋합니다.
3. Actions에서 Build Android APK를 다시 실행합니다.
4. 새 APK를 다운로드합니다.

## 주의사항

- 이 프로젝트는 debug APK를 생성합니다. 개인 사용, 테스트, 직접 설치용으로 적합합니다.
- Google Play 배포용 release APK/AAB는 별도 서명키 설정이 필요합니다.
- OCR, PDF, DOCX 기능이 외부 CDN 라이브러리에 의존하는 경우 스마트폰에서 인터넷 연결이 필요할 수 있습니다.
