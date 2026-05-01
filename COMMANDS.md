# adenc.sty — Command Reference

This file documents every command, environment, and option provided by `adenc.sty`.
Intended for use by coding agents generating LaTeX with this package.

## Package Options

```tex
\usepackage[<options>]{adenc}
```

| Option | Values | Default | Effect |
|---|---|---|---|
| `theorembox` | `none`, `plain`, `color` | `none` | `plain`: tcolorbox boxes (b/w). `color`: tcolorbox boxes with color. `none`: plain amsthm styles |
| `hideproofs` | `true`, `false` | `false` | Hides all `proof` environments |
| `hidemarkings` | `true`, `false` | `false` | Hides `\markabove` / `\markbelow` annotations |
| `workingpaper` | `true`, `false` | `false` | Draft watermark + wider margins for `\todo` |
| `header` | `true`, `false` | `true` | Running section header in page header |
| `clearsection` | `true`, `false` | `true` | `\section` starts on a new page |
| `fancyqed` | `true`, `false` | `true` | Decorative QED symbols for remark/example environments |
| `index` | `true`, `false` | `false` | Auto-index `\vocab` terms; prints index at end of document |
| `pset` | (flag) | `false` | Preset for problem sets: sets `clearsection=true`, `header=false`, `tocdepth=1`; colors `problem`/`exercise`/`question` dark purple. Options listed after `pset` override its defaults. |

## Theorem-like Environments

All environments below have a starred (`*`) unnumbered variant (e.g., `theorem*`).
All numbered variants share a single counter, numbered within section.

```tex
\begin{theorem}[Optional title]
  ...
\end{theorem}
```

| Environment | Style group | Body font |
|---|---|---|
| `theorem` | thmbox (blue when colored) | italic |
| `lemma` | thmbox | italic |
| `proposition` | thmbox | italic |
| `corollary` | thmbox | italic |
| `definition` | defbox (red when colored) | upright |
| `example` | exbox (green when colored) | upright |
| `remark` | remark (no box) | upright |
| `note` | remark | upright |
| `assumption` | remark | upright |
| `intuition` | remark | upright |
| `properties` | remark | upright |
| `fact` | remark | upright |
| `claim` | remark | upright |
| `notation` | remark | upright |
| `conjecture` | remark | upright |
| `algorithm` | remark | upright |
| `problem` | probbox (orange when colored) | upright |
| `exercise` | probbox | upright |
| `question` | probbox | upright |

### Proof

```tex
\begin{proof}              % default heading "Proof"
  ...
\end{proof}

\begin{proof}[Proof of Theorem 1]   % custom heading
  ...
\end{proof}
```

### Other Environments

```tex
\begin{hide} ... \end{hide}            % always excluded from output

\begin{itodo} ... \end{itodo}          % inline todo box (green bg, red border)

\begin{correction} ... \end{correction}  % correction box (red text, red border)

\begin{lessimportant} ... \end{lessimportant}  % small gray text
```

## Math Commands

### Paired Delimiters

All paired delimiters support `\abs*{...}` for `\left`/`\right` sizing and `\abs[\big]{...}` for manual sizing.

| Command | Output | Description |
|---|---|---|
| `\abs{x}` | `\|x\|` (single bar) | Absolute value |
| `\norm{x}` | `‖x‖` | Norm |
| `\ceil{x}` | `⌈x⌉` | Ceiling |
| `\floor{x}` | `⌊x⌋` | Floor |
| `\card{S}` | `\|S\|` (single bar) | Cardinality |
| `\ip{x}{y}` | `⟨x, y⟩` | Inner product (2 arguments) |

### Blackboard Bold (`\mathds`)

| Command | Aliases | Output |
|---|---|---|
| `\NN` | `\bN` | `𝟙N` |
| `\ZZ` | `\bZ` | `ℤ` |
| `\QQ` | `\bQ` | `ℚ` |
| `\RR` | `\bR` | `ℝ` |
| `\CC` | `\bC` | `ℂ` |
| `\PP` | `\bP` | `ℙ` |
| `\FF` | `\bF` | `𝔽` |

Additional `\bX` shortcuts exist for `X` in `{S, T, L, A}`.

### Calligraphic (`\mathcal`)

`\cA` through `\cZ` — all 26 letters. E.g., `\cA` → `𝒜`.

### Script (`\mathscr`)

`\sX` for `X` in `{A, B, C, D, E, F, K, L, M, P, R, S, T, U, V}`.

### Fraktur (`\mathfrak`)

`\fX` for all uppercase letters except `I` (to avoid clashing with `\fi` primitive).
Available: `{A, B, C, D, E, F, G, H, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z}`.

### Greek Shortcuts

| Command | Output |
|---|---|
| `\eps` | `\varepsilon` (ε) |
| `\vphi` | `\varphi` (φ) |

### Vector and Matrix

| Command | Syntax | Output |
|---|---|---|
| `\vec{v}` | `\vec{v}` | Bold `v` (uses `\bm`) |
| `\bmat{...}` | `\bmat{1 & 2 \\ 3 & 4}` | Bracket matrix `[...]` |
| `\pmat{...}` | `\pmat{1 & 2 \\ 3 & 4}` | Parenthesis matrix `(...)` |
| `\vmat{...}` | `\vmat{1 & 2 \\ 3 & 4}` | Determinant matrix `\|...\|` |

### Operators

| Command | Type | Output |
|---|---|---|
| `\argmax` | limits operator | arg max |
| `\argmin` | limits operator | arg min |
| `\ran` | operator | ran (range) |
| `\Int` | operator | Int (interior) |
| `\Id` | operator | Id (identity) |
| `\col` | operator | col (column space) |
| `\tr` | operator | tr (trace) |
| `\rank` | operator | rank |
| `\RREF` | operator | RREF |
| `\sgn` | operator | sgn (sign) |
| `\Span` | operator | span |
| `\GL` | operator | GL (general linear group) |
| `\dist` | operator | dist |
| `\diam` | operator | diam (diameter) |
| `\epi` | operator | epi (epigraph) |
| `\supp` | operator | supp (support) |
| `\Lip` | operator | Lip (Lipschitz) |
| `\conv` | operator | conv (convex hull) |
| `\res` | operator | res (resolvent/residue) |
| `\spec` | operator | spec (spectrum) |
| `\Re` | operator | Re (real part) |
| `\Im` | operator | Im (imaginary part) |
| `\arcsec` | operator | arcsec |
| `\arccot` | operator | arccot |
| `\arccsc` | operator | arccsc |

### Probability and Statistics

| Command | Type | Output |
|---|---|---|
| `\Pr` | operator | `ℙ` (probability) |
| `\P` | alias | Same as `\Pr` |
| `\E` | operator | `𝔼` (expectation) |
| `\Var` | operator | Var |
| `\Cov` | operator | Cov |
| `\Corr` | operator | Corr |
| `\sd` | operator | sd (standard deviation) |
| `\se` | operator | se (standard error) |
| `\MSE` | operator | MSE |
| `\Bias` | operator | Bias |
| `\plim` | limits operator | plim (probability limit) |

#### Convergence Arrows

| Command | Output | Description |
|---|---|---|
| `\disteq` | `=` with `d` above | Equality in distribution |
| `\distto` | `→` with `d` above | Convergence in distribution |
| `\longdistto` | `→` with `d` above (wider) | Long convergence in distribution |
| `\probto` | `→` with `p` above | Convergence in probability |
| `\longprobto` | `→` with `p` above (wider) | Long convergence in probability |
| `\iidsim` | `∼` with `iid` above | IID distributed as |

#### Distribution Names

| Command | Output |
|---|---|
| `\Bernoulli` | Bernoulli |
| `\Binomial` | Binomial |
| `\Multinomial` | Multinomial |
| `\Geometric` | Geometric |
| `\Poisson` | Poisson |
| `\Exponential` | Exponential |
| `\DirichletDist` | Dirichlet |
| `\GammaDist` | Gamma |
| `\BetaDist` | Beta |
| `\Normal` | `𝒩` (`\mathcal{N}`) |
| `\Uniform` | Uniform |
| `\Unif` | Uniform (alias) |

### Econometrics

| Command | Type | Output |
|---|---|---|
| `\SST` | operator | SST |
| `\SSE` | operator | SSE |
| `\SSR` | operator | SSR |
| `\AR` | operator | AR |
| `\MA` | operator | MA |
| `\indep` | symbol | `⊥⊥` (independence) |

### Analysis

| Command | Syntax | Output |
|---|---|---|
| `\dd` | `\int f \dd x` | Differential d (upright, with spacing) |
| `\DD` | `\DD f` | Derivative operator D (upright) |
| `\ii` | `e^{\ii\theta}` | Imaginary unit i (upright) |
| `\weakto` | `f_n \weakto f` | Weak convergence `⇀` |

### Set Theory

| Command | Output |
|---|---|
| `\complement` | Superscript `c` (complement, sans-serif) |
| `\emptyset` | `∅` (maps to `\varnothing`) |
| `\ind` | `𝟙` (indicator function) |
| `\ind{A}` | `𝟙{A}` (indicator with argument) |

### Linear Algebra

| Command | Syntax | Output |
|---|---|---|
| `\T` | `A^\T` | Transpose symbol (raised intercal) |

### Misc Symbols

| Command | Output |
|---|---|
| `\contradiction` | Stacked `×` symbol |
| `\coloneqq` | `:=` (definition, from `mathtools`) |

## Annotation Commands

| Command | Syntax | Description |
|---|---|---|
| `\vocab{word}` | `\vocab{compact}` | Bold vocabulary term. Auto-indexed if `index` option is on |
| `\draftnote[Label][color]{text}` | `\draftnote{fix this}` | Inline colored note. Default label: "Note", default color: `red!90!black` |
| `\markabove{align}{label}` | `\markabove{l}{above note}` | Tikz annotation above the insertion point; `align` is `l`, `c`, or `r` |
| `\markbelow{align}{label}` | `\markbelow{c}{below note}` | Tikz annotation below the insertion point; `align` is `l`, `c`, or `r` |
| `\todo{text}` | `\todo{check this}` | Margin todo note (from `todonotes` package) |

## Document Setup Commands

```tex
\courseinfo{code}{term}{title}{lecturer}{notetaker}
```

Sets `\title` and `\author` for course lecture notes.

```tex
\courseinfo{ECMA308}{W26}{Theory of Auctions}{Philip Reny}{Aden Chen}
% produces:
%   \title{ECMA308~(W26)\\Theory of Auctions}
%   \author{Lecturer:~Philip Reny \\ Notes by:~Aden Chen}
```

```tex
\makepsethead[due date]{course}{assignment}{author}
```

Renders a centered header block (course, assignment title, author, compile date) followed by the TOC. Call inside `\begin{document}`. The `due date` argument is optional; omit to hide it.

```tex
\makepsethead[2026-04-30]{MATH 101}{Problem Set 3}{John Smith}
```

```tex
\iproblem[label]{text}
```

Inline problem statement typeset in dark purple with a trailing QED-like symbol. The optional `label` (e.g. a problem number) is bold. Intended for use with the `pset` option.

```tex
\iproblem[1.]{Show that \(\RR\) is uncountable.}
```

### Header Customization

```tex
\renewcommand{\adencheadercontent}{...}   % override header text (default: section name)
```

## Document Template

```tex
\documentclass[oneside,reqno,letterpaper]{amsart}
\usepackage[theorembox=color]{adenc}

\title{Document Title}
\author{Author Name}

\begin{document}
\maketitle
\tableofcontents

\section{Introduction}

Content here.

\end{document}
```

## Deprecated Commands

These emit a package warning and will be removed in a future version.

| Command | Replacement |
|---|---|
| `\im` | `\ii` |
| `\I` | `\ii` |
| `\tran` | `\T` |
