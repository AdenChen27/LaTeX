# adenc

A personal LaTeX package for math notes and presentations, designed for use with `amsart`.

- **`adenc.sty`** — package for math notes/papers
- **`adenc-beamer.sty`** — companion package for Beamer presentations

> **Requires `--shell-escape`** (for `minted`). Add `$pdflatex = 'pdflatex -shell-escape %O %S';` to your `.latexmkrc`, or pass `-shell-escape` directly to `pdflatex`/`lualatex`.

See [`COMMANDS.md`](COMMANDS.md) for a full command reference, and [here](https://github.com/AdenChen27/Notes) for notes taken using this package.
You can also [preview a sample document on Overleaf](https://www.overleaf.com/read/psgmvhwzppnr#adf899).


## Package options

| Option | Values | Effect |
|--------|--------|--------|
| `theorembox` | `none`\* / `plain` / `color` | `plain` adds tcolorbox frames; `color` adds colored frames |
| `hideproofs` | `false`\* / `true` | Hides all proof environments |
| `hidemarkings` | `false`\* / `true` | Hides `\markabove`/`\markbelow` annotations and `\draftnote` |
| `workingpaper` | `false`\* / `true` | Draft watermark on first page + wide margin for `\todo` |
| `header` | `true`\* / `false` | Running section header |
| `clearsection` | `true`\* / `false` | Sections start on a new page |
| `fancyqed` | `true`\* / `false` | Fancy QED symbol at end of remarks/examples |
| `index` | `false`\* / `true` | Auto-index `\vocab` terms, printed at end |
| `pset` | `false`\* / `true` | Preset for problem sets: `clearsection`, no header, `tocdepth=1`, colored environments |

\* default value


## Samples

- [`sample.tex`](https://github.com/AdenChen27/LaTeX/blob/main/sample/sample.tex) — comprehensive showcase of all options, environments, and commands ([PDF](https://github.com/AdenChen27/LaTeX/blob/main/sample/sample.pdf))
- [`pset.tex`](https://github.com/AdenChen27/LaTeX/blob/main/sample/pset.tex) — sample problem set using `\makepsethead` and `\iproblem` ([PDF](https://github.com/AdenChen27/LaTeX/blob/main/sample/pset.pdf))
- [`sample-notes/notes.tex`](https://github.com/AdenChen27/LaTeX/blob/main/sample/sample-notes/notes.tex) — example lecture notes using `\courseinfo`, `\vocab`, and theorem environments ([PDF](https://github.com/AdenChen27/LaTeX/blob/main/sample/sample-notes/notes.pdf))


## Also in this repo

- [`pdf2img/`](https://github.com/AdenChen27/LaTeX/tree/main/pdf2img) — converts Goodnotes drawings to trimmed PNG
- [`snippets/`](https://github.com/AdenChen27/LaTeX/tree/main/snippets) — Neovim LuaSnip snippets
- [`Makefile`](https://github.com/AdenChen27/LaTeX/blob/main/Makefile) — `latexmk`-based build; `make filename=myfile`, `make view` (Skim), `make clean`
- [`scripts/`](https://github.com/AdenChen27/LaTeX/tree/main/scripts) — source files used to generate the packages


## Credits

Inspired by [Gilles Castel](https://github.com/gillescastel)'s [preamble](https://github.com/gillescastel/lecture-notes/blob/master/algebraic-topology/preamble.tex) and [Andrew Lin](https://web.stanford.edu/~lindrew/)'s [lindrew](https://web.stanford.edu/~lindrew/lindrew.sty) package.


## Template

This document can also be found at [`sample/template.tex`](https://github.com/AdenChen27/LaTeX/blob/main/sample/template.tex).

```tex
\documentclass[oneside,reqno,letterpaper]{amsart}
\usepackage{adenc}
% Package options (\usepackage[...]{adenc}):
%   theorembox=plain    tcolorbox frames around theorem environments
%   theorembox=color    same, but with coloured frames
%   workingpaper        draft watermark on the first page; wide margin for \todo
%   hideproofs          collapse all proof environments
%   hidemarkings        hide \markabove/\markbelow margin annotations
%                       and \draftnote inline draft comments
%   header=false        suppress the running section header
%   clearsection=false  don't start each section on a new page
%   fancyqed=false      omit the QED-like symbol at the end of remarks/examples
%   index               auto-index every \vocab term and print the index at the end
%   pset                preset for problem sets (clearsection, no header, tocdepth=1,
%                       problem/exercise/question in dark purple)


% For a standalone document:
\title{}
\author{}

% For course lecture notes, replace the two lines above with \courseinfo:
% \courseinfo{course code}{Term}{Full Course Title}{Lecturer}{Notetaker}
% e.g. \courseinfo{ECMA 30800}{W26}{Theory of Auctions}{Philip Reny}{Aden Chen}


\begin{document}
\maketitle
% For problem sets, replace \maketitle (and \tableofcontents) with \makepsethead:
% \makepsethead[due date]{course}{assignment}{author}
% e.g. \makepsethead[2026-05-01]{MATH 101}{Problem Set 1}{Aden Chen}

\tableofcontents

\section{}


\end{document}
```
