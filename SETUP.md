# Como rodar este projeto

Projeto: TCC de Sistemas de Informação (UFLA), template `templufla.cls`.
Repositório: https://github.com/Lucas-Henrique-Lopes-Costa/TCC-Ufla (branch `main`)

## Toolchain

| Item | Valor |
|---|---|
| Compilador | **pdfLaTeX** (pdfTeX 3.141592653-2.6-1.40.29) |
| Bibliografia | **BibTeX** 0.99e, estilo `abntex2-alf` |
| Distribuição | TeX Live 2026 (o autor usa BasicTeX, mas TeX Live full / MacTeX / MiKTeX também servem) |
| Script de build | `./compilar.sh` |

**Não use XeLaTeX nem LuaLaTeX.** A classe carrega `inputenc`, `fontenc` e as fontes Type 1 do
`psnfss` (`mathptmx`, `pslatex`), que são específicas do pdfLaTeX.

O `compilar.sh` faz quatro passagens, nesta ordem, e a ordem importa para o sumário,
as referências cruzadas e a bibliografia saírem certas:

```
pdflatex TCC_Lucas_Henrique_SI_UFLA_2026.tex
bibtex   TCC_Lucas_Henrique_SI_UFLA_2026
pdflatex TCC_Lucas_Henrique_SI_UFLA_2026.tex
pdflatex TCC_Lucas_Henrique_SI_UFLA_2026.tex
```

Saída esperada: `TCC_Lucas_Henrique_SI_UFLA_2026.pdf`, **43 páginas**, sem referências indefinidas.

## Opção A: Overleaf (zero instalação)

1. Baixe o repositório como ZIP (botão "Code" no GitHub).
2. No Overleaf: Novo Projeto, Carregar Projeto, e envie o ZIP.
3. Menu, Configurações: **Compilador = pdfLaTeX** e **Documento principal = `TCC_Lucas_Henrique_SI_UFLA_2026.tex`**.
4. Compile duas ou três vezes seguidas para o sumário e as citações estabilizarem.

## Opção B: macOS

```bash
# TeX Live completo (~5 GB, resolve tudo de uma vez)
brew install --cask mactex

# ou BasicTeX (~100 MB) + os pacotes deste projeto
brew install --cask basictex
eval "$(/usr/libexec/path_helper)"
sudo tlmgr update --self
sudo tlmgr install collection-latexextra collection-fontsrecommended \
                   collection-langportuguese collection-pictures abntex2
```

## Opção C: Linux (Debian/Ubuntu)

```bash
sudo apt update
sudo apt install texlive-latex-extra texlive-fonts-recommended \
                 texlive-lang-portuguese texlive-pictures texlive-bibtex-extra
# alternativa preguiçosa e pesada: sudo apt install texlive-full
```

## Opção D: Windows

Instale o **MiKTeX** (https://miktex.org). Ele baixa os pacotes que faltarem sozinho,
na primeira compilação. Aceite os prompts de instalação. Compile com pdfLaTeX.

## Compilando

```bash
git clone https://github.com/Lucas-Henrique-Lopes-Costa/TCC-Ufla.git
cd TCC-Ufla
chmod +x compilar.sh
./compilar.sh
```

## Pacotes usados

Vêm do repositório, não precisa instalar: `templufla.cls`, `abntex2cite.sty`, `abntex2-alf.bst`.

Precisam estar na distribuição: `abntex2`, `babel` (português), `glossaries`, `glossaries-extra`,
`glossary-mcols`, `mfirstuc`, `alphalph`, `titlesec`, `enumitem`, `fancyhdr`, `float`, `footmisc`,
`idxlayout`, `imakeidx`, `lastpage`, `multirow`, `subfigure`, `caption`, `colortbl`, `fancyvrb`,
`listings`, `mathtools`, `setspace`, `multicol`, `longtable`, `array`, `amsmath`, `amssymb`,
`latexsym`, `pgf`/`tikz`, `xcolor`, `psnfss` (`mathptmx`, `pslatex`), `hyperref`.
O `placeins` é opcional: está protegido por `\IfFileExists`, então a compilação passa sem ele.

## Duas versões do PDF

O arquivo principal tem um interruptor na **linha 145**:

- `\destacarfalse` gera a versão limpa (a de entrega).
- `\destacartrue` gera a versão com as alterações recentes marcadas em amarelo, para revisão do orientador.

Troque a linha, rode `./compilar.sh` de novo e renomeie o PDF gerado.
O repositório guarda as duas prontas: `..._principal.pdf` e `..._destacado.pdf`.

## Apresentação da defesa

`apresentacao/index.html` é um arquivo único, sem dependências. É só abrir no navegador,
sem servidor e sem build.

- Navegação: setas, barra de espaço ou roda do mouse. `Home` e `End` vão para os extremos.
- Tela cheia: `F11`.
- Edição de texto no próprio slide: tecla `E`, clique no texto, `Ctrl+S` para salvar no navegador.
- As imagens ficam em `apresentacao/imgs/` e precisam viajar junto com o HTML.
- `apresentacao/Apresentacao_TCC_Lucas_Henrique.pdf` é o plano B para o projetor.
- `apresentacao/ROTEIRO-E-PERGUNTAS.md` tem o roteiro de fala e as perguntas prováveis da banca.

## Problemas comuns

| Sintoma | Causa provável |
|---|---|
| `File 'templufla.cls' not found` | Compilando de fora da raiz do repositório. Rode na pasta do projeto. |
| Citações saindo como `[?]` | Faltou a passagem do BibTeX. Rode o `compilar.sh` inteiro, não só o pdflatex. |
| Sumário vazio ou desatualizado | Faltaram passagens. São três de pdflatex, com o bibtex no meio. |
| Acentos quebrados | Está compilando com XeLaTeX ou LuaLaTeX. Troque para pdfLaTeX. |
| `Package glossaries Error` | Faltou `collection-latexextra` (ou `texlive-latex-extra` no Linux). |
