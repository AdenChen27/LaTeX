# AGENTS.md

This file provides guidance to Codex (Codex.ai/code) when working with code in this repository.

## Overview

This is a personal LaTeX package repository containing two packages:
- `adenc.sty` — a package for math notes/papers (used with `amsart`)
- `adenc-beamer.sty` — a companion package for Beamer presentations

For a full command reference, see `COMMANDS.md` in the repo root.

## Build System

### Building the packages

The packages are **generated** from source files in `scripts/` using `latexpand`. Do not edit `adenc.sty` or `adenc-beamer.sty` directly — edit the source files in `scripts/` instead, then build:

```sh
cd scripts && make          # build all: adenc.sty, adenc-beamer.sty, README.md
cd scripts && make adenc    # build only adenc.sty
cd scripts && make beamer   # build only adenc-beamer.sty
cd scripts && make readme   # build README.md and pdf2img/README.md
```

The `scripts/Makefile` uses `latexpand` to flatten the source `.tex` files and places the output in the repo root and in `sample/`.

**README.md is generated** — do not edit it directly. Edit `scripts/pre-README.md` and `sample/template.tex`, then run `cd scripts && make readme`.

### Source file structure in `scripts/`

- `pre-adenc.tex` — main source for `adenc.sty`; uses `\input` to pull in:
  - `thm-styles.tex` — theorem environment definitions and tcolorbox styles
  - `marking-commands.tex` — `\markabove`, `\markbelow`, `\draftnote`, `\itodo`, etc.
  - `document-commands.tex` — `\vocab`, `\courseinfo`, `\makepsethead`, `\iproblem`
  - `math-commands.tex` — all math operator and shortcut definitions
  - `code.tex` — minted/code styling
- `pre-beamer.tex` — main source for `adenc-beamer.sty`
- `template.tex` — base `.tex` template (also embedded in README.md)
- `pre-README.md` / `pre-pdf2img-README.md` — README sources (concatenated with template to produce final READMEs)

### Compiling a LaTeX document (root Makefile)

The root `Makefile` is for compiling individual `.tex` files (not for building the package itself):

```sh
make filename=myfile    # compile myfile.tex → myfile.pdf (aux files go to ./aux/)
make view filename=myfile  # open PDF in Skim
make clean              # remove aux files
```

Default `filename` is `test`. Requires `latexmk` and Skim (macOS).

**Engine:** `adenc.sty` requires **XeLaTeX or LuaLaTeX** — pdflatex is not supported (`fontspec` is engine-specific). The root Makefile defaults to `-xelatex`; substitute `-lualatex` to use LuaLaTeX.

## Package Options

`adenc.sty` supports these options (`\usepackage[opts]{adenc}`):

| Option | Values | Effect |
|--------|--------|--------|
| `theorembox` | `none`* / `plain` / `color` | `plain` adds tcolorbox boxes; `color` adds colored boxes |
| `hideproofs` | `false`* / `true` | Hides proof environments |
| `hidemarkings` | `false`* / `true` | Hides `\markabove`/`\markbelow` annotations |
| `workingpaper` | `false`* / `true` | Draft watermark on first page + expanded margin for `\todo` |
| `header` | `true`* / `false` | Controls whether the running header is displayed |
| `clearsection` | `true`* / `false` | Controls whether sections start on a new page (also suppresses header on first page of each section) |
| `fancyqed` | `true`* / `false` | Controls whether fancy QED symbols mark the end of remark/example environments |
| `index` | `false`* / `true` | Auto-index `\vocab` terms, printed at end of document |
| `pset` | `false`* / `true` | Preset for problem sets: sets `clearsection=true`, `header=false`, `tocdepth=1`; colors `problem` dark purple (in `theorembox=none` mode). Options listed after `pset` override its defaults. |

\* default value

## Key Custom Commands

**Theorem environments:** `theorem`, `lemma`, `proposition`, `corollary`, `definition`, `example`, `remark`, `note`, `claim`, `conjecture`, `algorithm`, `problem`, `exercise`, `question` — all have starred (`*`) unnumbered variants.

**Math shortcuts:**
- `\NN`, `\ZZ`, `\QQ`, `\RR`, `\CC`, `\PP`, `\FF` — number sets (also `\bN` etc.)
- `\cA`...`\cZ` — expands to `\mathcal{A}`...`\mathcal{Z}`
- `\sA`, `\sB`, etc. — `\mathscr` variants
- `\abs{}`, `\norm{}`, `\ceil{}`, `\floor{}` — paired delimiters
- `\vec{}` — bold vector notation
- `\bmat{}`, `\pmat{}`, `\vmat{}` — matrix environments
- `\E`, `\Pr`/`\P`, `\Var`, `\Cov` — probability operators
- `\dd` — differential operator (`\mathop{}\!\mathrm{d}`); use in integrals: `\int f \dd x`
- `\DD` — derivative operator (`\mathrm{D}`)
- `\ii` — imaginary unit `i` (`\im` and `\I` are deprecated aliases)
- `\ind{}` — indicator function `𝟙{·}`

**Annotations:**
- `\draftnote[Label][color]{text}` — colored inline draft note
- `\markabove{align}{label}` / `\markbelow{align}{label}` — tikz-based margin annotations; `align` is `l`, `c`, or `r`
- `\vocab{word}` — bold vocabulary term

**Document setup:**
- `\courseinfo{code}{term}{title}{lecturer}{notetaker}` — sets `\title` and `\author` for lecture notes
- `\makepsethead[due]{course}{assignment}{author}` — pset header block + TOC; use in place of `\maketitle` with the `pset` option
- `\iproblem[label]{text}` — inline problem statement in dark purple with QED symbol; for use with `pset`

## Samples

- `sample/sample.tex` — comprehensive showcase of all options, environments, and commands
- `sample/pset.tex` — sample problem set demonstrating the `pset` option, `\makepsethead`, `\iproblem`
- `sample/sample-notes/` — example lecture notes using `\courseinfo`, `\vocab`, etc.

## Document Template

```tex
\documentclass[oneside,reqno,letterpaper]{amsart}
\usepackage{adenc}
% Options: theorembox=none|plain|color, hideproofs, hidemarkings, workingpaper, index
%          header=false, clearsection=false, fancyqed=false, pset

\title[]{}
\author{}

\begin{document}
\maketitle
\tableofcontents
\section{}

\end{document}
```
