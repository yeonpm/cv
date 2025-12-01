# LaTeX 빌드 Makefile

TEXFILE = cv.tex
PDFFILE = cv.pdf
LATEX = xelatex

.PHONY: all clean build

all: build

build: $(PDFFILE)

$(PDFFILE): $(TEXFILE)
	@echo "빌드를 시작합니다..."
	$(LATEX) -interaction=nonstopmode $(TEXFILE)
	$(LATEX) -interaction=nonstopmode $(TEXFILE)
	@echo "빌드가 완료되었습니다."

clean:
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz

clean-all: clean
	rm -f $(PDFFILE)

help:
	@echo "사용 가능한 명령어:"
	@echo "  make        - PDF 파일 빌드"
	@echo "  make build  - PDF 파일 빌드"
	@echo "  make clean  - 중간 파일 정리"
	@echo "  make clean-all - 모든 생성 파일 정리 (PDF 포함)"


