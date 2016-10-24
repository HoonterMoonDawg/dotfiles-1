
Plug 'Shougo/vimproc', {
	  \ 'build' : {
	  \     'windows' : 'make -f make_mingw32.mak',
	  \     'cygwin' : 'make -f make_cygwin.mak',
	  \     'mac' : 'make -f make_mac.mak',
	  \     'unix' : 'make -f make_unix.mak',
	  \     'linux' : 'make',
	  \    },
	  \ }

Plug 'mattn/webapi-vim'
Plug 'tyru/open-browser.vim'
Plug 'Shougo/unite.vim'

" vim-taskwiki
Plug 'powerman/vim-plugin-AnsiEsc'

" Maktaba is a framework for vim plugins, really nice actually.
Plug 'google/vim-maktaba'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'

" Reqd by Taskwarrior
Plug 'xolox/vim-misc'

" Ultimate Text Linker
Plug 'vim-scripts/utl.vim'

