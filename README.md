# LaTeX 이력서 빌드 가이드

## 맥에서 LaTeX 빌드하기

### 1. 필요한 패키지 설치

이미 다음 패키지들이 설치되어 있습니다:
- `kotex-utf`: 한글 지원
- `xetexko`: XeTeX 한글 지원

추가 패키지가 필요한 경우:
```bash
tlmgr install [패키지명]
```

### 2. 빌드 방법

#### 방법 1: 빌드 스크립트 사용
```bash
./build.sh
```

#### 방법 2: Makefile 사용
```bash
make          # PDF 빌드
make clean    # 중간 파일 정리
make clean-all # 모든 생성 파일 정리 (PDF 포함)
```

#### 방법 3: 직접 빌드
```bash
xelatex cv.tex
xelatex cv.tex  # 참조 및 하이퍼링크를 위해 한 번 더 실행
```

### 3. 폰트 설정

현재 맥용으로 `Apple SD Gothic Neo` 폰트가 설정되어 있습니다.

Windows에서 빌드하는 경우 `cv.tex` 파일의 폰트 설정을 다음과 같이 변경하세요:
```latex
\setmainfont{Malgun Gothic}
\setmainhangulfont{Malgun Gothic}
\setsansfont{Malgun Gothic}
```

### 4. 생성되는 파일

- `cv.pdf`: 최종 PDF 파일
- `cv.aux`: 보조 파일 (참조 정보)
- `cv.log`: 빌드 로그
- `cv.out`: 하이퍼링크 정보

### 5. 문제 해결

#### kotex.sty를 찾을 수 없는 경우
```bash
tlmgr install kotex-utf
```

#### xetexko.sty를 찾을 수 없는 경우
```bash
tlmgr install xetexko
```

#### 폰트를 찾을 수 없는 경우
시스템에 설치된 한글 폰트 확인:
```bash
fc-list :lang=ko
```

원하는 폰트가 있다면 `cv.tex`의 폰트 설정을 해당 폰트명으로 변경하세요.


