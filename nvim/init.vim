"=============================================================================
" init.vim --- Entry file for neovim
" Copyright (c) 2016-2019 Wang Shidong & Contributors
" Author: Wang Shidong < wsdjeg at 163.com >
" URL: https://spacevim.org
" License: GPLv3
"=============================================================================
execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/main.vim'

command! -nargs=0 Prettier :CocCommand prettier.formatFile

