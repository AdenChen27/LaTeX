# adenc

A personal LaTeX package for math notes and presentations, designed for use with `amsart`.

- **`adenc.sty`** — package for math notes/papers
- **`adenc-beamer.sty`** — companion package for Beamer presentations

> **Requires XeLaTeX or LuaLaTeX.** `minted` v3 on current TeX Live can usually run through the trusted `latexminted` executable without unrestricted `--shell-escape`; older TeX Live or MiKTeX setups may still need shell escape or explicit trusted-command configuration. pdflatex is not supported.

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
| `tufte` | `false`\* / `true` | Narrow text block with a wide outer margin; sets `clearsection=false` |
| `fancyqed` | `true`\* / `false` | Fancy QED symbol at end of remarks/examples |
| `index` | `false`\* / `true` | Auto-index `\vocab` terms, printed at end |
| `pset` | `false`\* / `true` | Preset for problem sets: `clearsection`, no header, `tocdepth=1`; colors `problem` dark purple |

\* default value


## Samples

- [`sample.tex`](https://github.com/AdenChen27/LaTeX/blob/main/sample/sample.tex) — comprehensive showcase of all options, environments, and commands ([PDF](https://github.com/AdenChen27/LaTeX/blob/main/sample/sample.pdf))
- [`pset.tex`](https://github.com/AdenChen27/LaTeX/blob/main/sample/pset.tex) — sample problem set using `\makepsethead` and `\iproblem` ([PDF](https://github.com/AdenChen27/LaTeX/blob/main/sample/pset.pdf))
- [`sample-notes/notes.tex`](https://github.com/AdenChen27/LaTeX/blob/main/sample/sample-notes/notes.tex) — example lecture notes using `\courseinfo`, `\vocab`, and theorem environments ([PDF](https://github.com/AdenChen27/LaTeX/blob/main/sample/sample-notes/notes.pdf))


## Chapter and section authors

Place `\chapterauthor{...}` or `\sectionauthor{...}` immediately after a numbered or starred heading to add a small-caps author attribution without changing the table of contents or running header. Numbered section attributions align with the title rather than the section number:

```tex
\chapter{Information Economics}
\chapterauthor{Aden Chen}

\section{Common Knowledge}
\sectionauthor{Robert Aumann}
```


## Also in this repo

- [`pdf2img/`](https://github.com/AdenChen27/LaTeX/tree/main/pdf2img) — converts Goodnotes drawings to trimmed PNG
- [`snippets/`](https://github.com/AdenChen27/LaTeX/tree/main/snippets) — Neovim LuaSnip snippets
- [`Makefile`](https://github.com/AdenChen27/LaTeX/blob/main/Makefile) — `latexmk`-based build; `make filename=myfile`, `make view`, `make clean`
- [`scripts/`](https://github.com/AdenChen27/LaTeX/tree/main/scripts) — source files used to generate the packages


## Credits

Inspired by [Gilles Castel](https://github.com/gillescastel)'s [preamble](https://github.com/gillescastel/lecture-notes/blob/master/algebraic-topology/preamble.tex) and [Andrew Lin](https://web.stanford.edu/~lindrew/)'s [lindrew](https://web.stanford.edu/~lindrew/lindrew.sty) package.


## Template

This document can also be found at [`sample/template.tex`](https://github.com/AdenChen27/LaTeX/blob/main/sample/template.tex).
