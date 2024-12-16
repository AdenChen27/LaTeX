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

    - [Here](https://github.com/AdenChen27/Notes) are some of the notes I've taken. 
 
    - See end of this document for a `.tex` template using `adenc.sty`. 

- `pdf2img/pdf2img.py`

    - I use this script to convert and trim images I draw using Goodnotes to png.

    - Check out a more detailed description [here](https://github.com/AdenChen27/LaTeX/tree/main/pdf2img).


- `Makefile`
    
    - I use this makefile when I'm not using [VimTeX](https://github.com/lervag/vimtex). 

    - Supports `make`, `make clean`, and `make view`. 

    - Uses latexmk. 

    - Set `filename` before build (default is "main"). 

    - Change relevant commands for `make view` if you're not on mac or do not have [skim](https://skim-app.sourceforge.io/) installed. 

- See also my vim Ultisnips [snippets](https://github.com/AdenChen27/dotfiles/tree/main/vim/UltiSnips). 

- The scripts I used to create these packages can be found in [`scripts`](https://github.com/AdenChen27/LaTeX/tree/main/scripts).


### `.tex` template using `adenc.sty`:

This document can also be found at [template.tex](https://github.com/AdenChen27/LaTeX/blob/main/sample/public-template.tex)

```tex
\documentclass[oneside,reqno,letterpaper]{amsart}
\usepackage{adenc}
% Options: color, plain, hideproofs, hidemarkings, workingpaper

\title[]{}
\author{}

\begin{document}
\maketitle

\tableofcontents

\section{}


\end{document}
```
