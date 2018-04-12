set shell=/bin/bash
set encoding=UTF-8

" TODO: Implementation of focus feature

" source .vimrc on save
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/octave.vim--'
Plugin 'jiangmiao/auto-pairs'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ryanoasis/vim-devicons'
Plugin 'kien/ctrlp.vim'
Plugin 'w0rp/ale'

call vundle#end()
filetype plugin indent on

" set ruler                                   " Doublequote starts comment
" set hlsearch                                " Search Highlighting
" set showmatch                               " Cursor shows matching ) and }
" set wildchar=<Tab>                          " Starts wild expansion in
"                                             " ... command line using <TAB>
" set wildmenu                                " Wild char completion menu
" set wildignore=*.o,*.class,*.pyc            " Ignore files while expanding
" set autoindent                              " Auto indentation
" set incsearch                               " Incremental search
" set nobackup                                " No *~backup files
" set copyindent                              " Copy previous indentation on
"                                             " ... auto indenting
" set ignorecase                              " Ignore case when searching
" set smartcase                               " Ignore case if pattern is all
"                                             " lowercase, case-sensitive, other
" set smarttab                                " Insert tab at beginning of a
"                                             " ... line according to context
" set number                                  " Shows current line number
" set relativenumber                          " Shows relative number with
"                                             " respect to current line
" set history=1000                            " Use long history for commands
" set undolevels=1000                         " Use long undo history
" set tabstop=2                               " Define tabs
" set shiftwidth=4                            " When indenting with '>', use
"                                             " ... 4 spaces width
" set expandtab                               " On pressing tab, insert 4 spaces
" setlocal foldmethod=marker                  " Mandatory for folding
