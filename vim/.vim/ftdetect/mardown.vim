" -- activate spell checking for the markdown filetype -------------------------

au! BufRead,BufNewFile *.mdown,*.md set filetype=markdown
autocmd FileType markdown setlocal spell spelllang=en_us
