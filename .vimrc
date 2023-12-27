" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Allow switching buffers quickly
set hidden

" Insert 4 spaces instead of tab character
set tabstop=4
set shiftwidth=0 " This will always match tabstop value
set expandtab

