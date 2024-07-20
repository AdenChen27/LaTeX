# latex

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

- `Makefile`
    
    - I use this make file when I'm not using vimtex. 

    - Supports `make`, `make clean`, and `make view`. 

    - Uses latexmk. 

    - Set `filename` before build (default is "main"). 

    - Change relevant commands for `make view` if you're not on mac or do not have [skim](https://skim-app.sourceforge.io/) installed. 

- See also my vim Ultisnips [snippets](https://github.com/AdenChen27/dotfiles/blob/main/vim/UltiSnips/tex.snippets). 

