# LaTeX

Files I use for taking math notes using LaTeX. 

- `adenc.sty`

    - Borrowed heavily from 
        [Gilles Castel](https://github.com/gillescastel)'s 
        [preamble file](https://github.com/gillescastel/lecture-notes/blob/master/algebraic-topology/preamble.tex) 
        for his 
        [lecture notes](https://github.com/gillescastel/lecture-notes)
        and [Andrew Lin](https://web.stanford.edu/~lindrew/)'s
        package, [lindrew](https://web.stanford.edu/~lindrew/lindrew.sty). 

    - Check out [a sample document](https://www.overleaf.com/read/psgmvhwzppnr#adf899) using `adenc.sty` on Overleaf.
 
    - See end of this document for a `.tex` template using `adenc.sty`. 

    <!-- - Two options are available: `color` and `plain`. Pass `color` (`\usepackage[color]{adenc}`) to produce colored theorem environments; pass `plain` (`\usepackage[plain]{adenc}`)  to use the default theorem environments: `definition`, `plain`, and `remark`. -->

- `Makefile`
    
    - I use this makefile when I'm not using [VimTeX](https://github.com/lervag/vimtex). 

    - Supports `make`, `make clean`, and `make view`. 

    - Uses latexmk. 

    - Set `filename` before build (default is "main"). 

    - Change relevant commands for `make view` if you're not on mac or do not have [skim](https://skim-app.sourceforge.io/) installed. 

- See also my vim Ultisnips [snippets](https://github.com/AdenChen27/dotfiles/tree/main/vim/UltiSnips). 



### `.tex` template using `adenc.sty`:



```tex
\documentclass[oneside,reqno,letterpaper]{amsart}

\usepackage{silence} % for suppressing warnings
\WarningFilter{mdframed}{You have requested package}

\usepackage{/Users/aden/Library/CloudStorage/Box-Box/latex/adenc}



\title[]{}
\author{Aden Chen}



\begin{document}
\maketitle

\tableofcontents

\section{}











\end{document}


```
