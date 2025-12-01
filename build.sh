#!/bin/bash

# LaTeX 빌드 스크립트
# 사용법: ./build.sh

echo "LaTeX 빌드를 시작합니다..."

# xelatex로 빌드 (한글 지원)
xelatex -interaction=nonstopmode cv.tex

# 참조 및 하이퍼링크를 위해 한 번 더 빌드
xelatex -interaction=nonstopmode cv.tex

# 중간 파일 정리 (선택사항)
# rm -f cv.aux cv.log cv.out cv.toc

echo "빌드가 완료되었습니다. cv.pdf 파일을 확인하세요."


