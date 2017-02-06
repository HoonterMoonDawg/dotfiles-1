
" Text editing
"set cino=:0 " No indent for case:/default:
"set shiftwidth=4
"set tabstop=4

" Interface
"set guifont=Monoissome:h12
set ruler

"set colorcolumn=120
"set autoindent
"set smarttab

"let s:cpo_save=&cpo
"set cpo&vim
"vmap gx <Plug>NetrwBrowseXVis
"nmap gx <Plug>NetrwBrowseX
"vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
"nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
"let &cpo=s:cpo_save
"unlet s:cpo_save

set helplang=en
"set verbose=2
"set window=55

" Commands that shell out tend to assume a bourne shell
set shell=sh

" Add templates upon new file
"au BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl

"augroup Shebang
"    autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python\<nl># -*- coding: utf8 -*-\<nl>\"|$

"    autocmd BufNewFile *.sh 0put =\"#!/usr/bin/env bash\<nl># -*- coding: utf8 -*-\<nl>set -eo pipefail\<nl>\"|$
"    autocmd BufNewFile *.zsh 0put =\"#!/usr/bin/env zsh\<nl># -*- coding: utf8 -*-\<nl>set -eo pipefail\<nl>\"|$

"    autocmd BufNewFile *.rb 0put =\"#!/usr/bin/env ruby\<nl># -*- coding: utf8 -*-\<nl>\"|$

"    autocmd BufNewFile *.tex 0put =\"%&plain\<nl>\"|$
"    autocmd BufNewFile *.\(cc\|hh\) 0put =\"//\<nl>// \".expand(\"<afile>:t\").\" -- \<nl>//\<nl>\"|2|start!
"augroup END

let g:rustfmt_autosave = 1
let g:racer_experimental_completer = 1

"set emoji

nnoremap <silent> <leader>a :ArgWrap<CR>

" For conceal markers.
set conceallevel=1
set concealcursor=nc

let g:indentLine_setConceal = 0
"let g:indentLine_char = 'c'
"let g:indentLine_char = '┆'
" disable by default
"let g:indentLine_enabled = 0

" tty
let g:indentLine_color_term = 239
" gui
let g:indentLine_color_gui = '#A4E57E'
" none X terminal
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)
"let g:indentLine_setColors = 0

map <silent><C-Space> :CtrlSpace<CR>

let g:CtrlSpaceDefaultMappingKey = "<C-Space>"
let g:CtrlSpaceSetDefaultMapping = 1
let g:CtrlSpaceUseMouseAndArrowsInTerm = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceIgnoredFiles = '\v((tmp|temp)[\/]|\.pyc$|__pycache__[\/])'
let g:CtrlSpaceFileEngine = "auto"

"if executable("ag")
"    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
"endif

function! s:RemoveLastPathComponent()
  let l:cmdlineBeforeCursor = strpart(getcmdline(), 0, getcmdpos() - 1)
  let l:cmdlineAfterCursor = strpart(getcmdline(), getcmdpos() - 1)

  let l:cmdlineRoot = fnamemodify(cmdlineBeforeCursor, ':r')
  let l:result = (l:cmdlineBeforeCursor ==# l:cmdlineRoot ? substitute(l:cmdlineBeforeCursor, '\%(\\ \|[\\/]\@!\f\)\+[\\/]\=$\|.$', '', '') : l:cmdlineRoot)
  call setcmdpos(strlen(l:result) + 1)
  return l:result . l:cmdlineAfterCursor
endfunction
cnoremap <C-BS> <C-\>e(<SID>RemoveLastPathComponent())<CR>
