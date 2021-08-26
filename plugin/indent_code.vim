" Last Change: 2021-01-11  Monday: 08:52:23 PM
" Indent code
" A Vim plugin to indent code.
" https://unix.stackexchange.com/questions/19945/auto-indent-format-code-for-vim

" ==================================
" Write the following lines to
" your .vimrc for convenience.
" ==================================

" filetype plugin indent on
" set autoindent
" set smartindent
" set copyindent                  " copy the previous indentation on autoindenting
" set preserveindent              " save as much indent structure as possible
" set tabstop=2                   " a tab is two spaces
" set shiftwidth=2                " number of spaces to use for autoindenting
" set softtabstop=2

" ==================================
" Code
" ==================================
function! Indent_Code()
	" https://vim.fandom.com/wiki/Multiple_commands_at_once
	" https://unix.stackexchange.com/questions/46827/vim-executing-a-key-command-in-a-function
	:execute 'normal gg | =G'
endfunction

:nmenu Plugin.Indent\ Code\ \(\:IndentCode\ or,\ gg\ then\ =G\) :call Indent_Code() <CR><ESC>
command! IndentCode :call Indent_Code()
" https://github.com/mudassir-ahmed/vim-workshop/blob/master/05-examples.md
" https://stackoverflow.com/questions/601039/save-and-run-at-the-same-time-in-vim
" --------------------------------------------------------------------------------------------
" autocmd BufWritePost * :call Indent_Code() | :w   " Autosave is disabled permanently because
"                                                   it was causing the cursor to jump
"                                                   at the first line while saving
"                                                   the buffer.
" --------------------------------------------------------------------------------------------
