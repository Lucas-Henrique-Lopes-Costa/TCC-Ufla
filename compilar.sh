#!/bin/bash

# Ativa o PATH do BasicTeX
eval "$(/usr/libexec/path_helper)"

# Vai para o diretório do script
cd "$(dirname "$0")"

echo "==> Compilando (1ª passagem)..."
pdflatex -interaction=nonstopmode TCC_Lucas_Henrique_SI_UFLA_2026.tex

echo "==> Processando bibliografia..."
bibtex TCC_Lucas_Henrique_SI_UFLA_2026

echo "==> Compilando (2ª passagem)..."
pdflatex -interaction=nonstopmode TCC_Lucas_Henrique_SI_UFLA_2026.tex

echo "==> Compilando (3ª passagem - sumário e referências cruzadas)..."
pdflatex -interaction=nonstopmode TCC_Lucas_Henrique_SI_UFLA_2026.tex

echo ""
echo "==> Pronto! PDF gerado: TCC_Lucas_Henrique_SI_UFLA_2026.pdf"
