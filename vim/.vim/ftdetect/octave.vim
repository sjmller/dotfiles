" -- activate spell checking for the octave filetype -------------------------
au! BufRead,BufNewFile *.m,*.oct set filetype=octave

augroup octaveSpell
    autocmd!
    autocmd FileType octave setlocal spell spelllang=en_us
    autocmd BufRead,BufNewFile *.m,*.oct setlocal spell spelllang=en_us
    if has("autocmd") && exists("+omnifunc")
      if &omnifunc == "" |
        setlocal omnifunc=syntaxcomplete#Complete |
      endif
    endif
augroup END
