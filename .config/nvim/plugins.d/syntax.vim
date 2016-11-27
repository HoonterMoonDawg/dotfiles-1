
" Plyglot pack:
" applescript (syntax)
" ansible (syntax, indent, ftplugin, ftdetect)
" arduino (syntax, indent, ftdetect)
" blade (syntax, indent, ftplugin, ftdetect)
" c++11 (syntax)
" c/c++ (syntax)
" cjsx (ftdetect, syntax, ftplugin)
" clojure (syntax, indent, autoload, ftplugin, ftdetect)
" coffee-script (syntax, indent, compiler, autoload, ftplugin, ftdetect)
" cryptol (syntax, compiler, ftplugin, ftdetect)
" crystal (syntax, indent, autoload, ftplugin, ftdetect)
" cql (syntax, ftdetect)
" css (syntax)
" cucumber (syntax, indent, compiler, ftplugin, ftdetect)
" dart (syntax, indent, autoload, ftplugin, ftdetect)
" dockerfile (syntax, ftdetect)
" elixir (syntax, indent, compiler, ftplugin, ftdetect)
" elm (syntax, indent, autoload, ftplugin, ftdetect)
" emberscript (syntax, indent, ftplugin, ftdetect)
" emblem (syntax, indent, ftplugin, ftdetect)
" erlang (syntax, indent, ftdetect)
" fish (syntax, indent, compiler, autoload, ftplugin, ftdetect)
" git (syntax, indent, ftplugin, ftdetect)
" glsl (syntax, indent, ftdetect)
" go (syntax, compiler, indent, ftdetect)
" groovy (syntax)
" haml (syntax, indent, compiler, ftplugin, ftdetect)
" handlebars (syntax, indent, ftplugin, ftdetect)
" haskell (syntax, indent, ftplugin, ftdetect)
" haxe (syntax, ftdetect)
" html5 (syntax, indent, autoload, ftplugin)
" jasmine (syntax, ftdetect)
" javascript (syntax, indent, ftdetect, ftplugin, extras)
" json (syntax, indent, ftplugin, ftdetect)
" jst (syntax, indent, ftdetect)
" jsx (ftdetect, after)
" julia (syntax, indent, ftdetect)
" kotlin (syntax, indent, ftdetect)
" latex (syntax, indent, ftplugin)
" less (syntax, indent, ftplugin, ftdetect)
" liquid (syntax, indent, ftplugin, ftdetect)
" livescript (syntax, indent, compiler, ftplugin, ftdetect)
" lua (syntax, indent)
" mako (syntax, indent, ftplugin, ftdetect)
" markdown (syntax, ftdetect)
" nginx (syntax, indent, ftdetect)
" nim (syntax, compiler, indent, ftdetect)
" nix (syntax, ftplugin, ftdetect)
" objc (ftplugin, syntax, indent)
" ocaml (syntax, indent, ftplugin)
" octave (syntax)
" opencl (syntax, indent, ftplugin, ftdetect)
" perl (syntax, indent, ftplugin, ftdetect)
" pgsql (syntax, ftdetect)
" php (syntax)
" plantuml (syntax, indent, ftplugin, ftdetect)
" powershell (syntax, indent, ftplugin, ftdetect)
" protobuf (syntax, indent, ftdetect)
" pug (syntax, indent, ftplugin, ftdetect)
" puppet (syntax, indent, ftplugin, ftdetect)
" purescript (syntax, indent, ftplugin, ftdetect)
" python (syntax, indent)
" python-compiler (compiler, autoload, ftdetect)
" qml (syntax, indent, ftplugin, ftdetect)
" r-lang (syntax, ftplugin)
" raml (syntax, ftplugin, ftdetect)
" ragel (syntax)
" rspec (syntax, ftdetect)
" ruby (syntax, indent, compiler, autoload, ftplugin, ftdetect)
" rust (syntax, indent, compiler, autoload, ftplugin, ftdetect)
" sbt (syntax, ftdetect)
" scala (syntax, indent, compiler, ftplugin, ftdetect)
" slim (syntax, indent, ftplugin, ftdetect)
" solidity (syntax, indent, ftdetect)
" stylus (syntax, indent, ftplugin, ftdetect)
" swift (syntax, indent, ftplugin, ftdetect)
" systemd (syntax, ftdetect)
" textile (syntax, ftplugin, ftdetect)
" thrift (syntax, ftdetect)
" tmux (syntax, ftplugin, ftdetect)
" tomdoc (syntax)
" toml (syntax, ftplugin, ftdetect)
" twig (syntax, indent, ftplugin)
" typescript (syntax, indent, compiler, ftplugin, ftdetect)
" vala (syntax, indent, ftdetect)
" vbnet (syntax)
" vcl (syntax, ftdetect)
" vm (syntax, indent, ftdetect)
" xls (syntax)
" yaml (syntax, ftplugin)
" yard (syntax)
Plug 'sheerun/vim-polyglot'
let g:polyglot_disabled = [
    \ 'python',
    \ 'go',
    \ 'javascript',
    \ 'typescript',
    \ 'dart',
    \ 'css',
    \ ]

" GPG
Plug 'jamessan/vim-gnupg', {'for': ['gpg']}

" Show CSS colors as what they truely are.
Plug 'ap/vim-css-color'

" Allows for python rst docstring support
Plug 'Rykka/riv.vim' ", {'for': ['markdown', 'mkd', 'md', 'python', 'rst']}

"" BATS test runner and syntax
Plug 'markcornick/vim-bats', {'for': ['bats']}

" Better json
"Plug 'elzr/vim-json'
" JSONnet
Plug 'google/vim-jsonnet'

" AWS CloudFormation
"Plug 'm-kat/aws-vim'

" Go
Plug 'fatih/vim-go', {'for': ['go']}

"" Clang
"Plug 'Rip-Rip/clang_complete'
"Plug 'osyo-manga/vim-marching'

"" Ruby
"Plug 'osyo-manga/vim-monster'

"" Javascript
"Plug 'moll/vim-node'  "
Plug 'ternjs/tern_for_vim', {'for': ['json', 'javascript']}
"Plug 'kchmck/vim-coffee-script, {'for': ['coffee']}
Plug 'dart-lang/dart-vim-plugin', {'for': ['dart']}
" syntax
"Plug 'othree/yajs.vim', {'for': ['json', 'javascript']}
"Plug 'othree/es.next.syntax.vim', {'for': ['json', 'javascript']}
" JavaScript Parameter Complete(JSPC): cemp for func params, such as event names, crypto algorithms, and common locales
"Plug 'othree/jspc.vim', {'for': ['json', 'javascript']}
"Plug 'othree/javascript-libraries-syntax.vim', {'for': ['json', 'javascript']}

autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 0
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 0
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1

"Plug 'othree/svg-properties-syntax.vim'
"Plug 'othree/html5.vim'
"" Update the bult-in CSS complete function to latest CSS standard.
"Plug 'othree/csscomplete.vim', {'for': ['css']}
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

" Yet Another Typescript Syntax
Plug 'HerringtonDarkholme/yats.vim', {'for': ['typescript']}

" Hex
Plug 'Shougo/vinarise.vim'

" ZSH "official" vim syntax, definitely more up to date.
Plug 'chrisbra/vim-zsh', {'for': ['zsh', 'sh']}

" VimL color improvements
Plug 'trapd00r/vim-after-syntax-vim', {'for': 'vim'}
"Plug 'tpope/vim-scriptease'

" Salt
Plug 'saltstack/salt-vim', {'for': ['sls']}

" Jinja2
Plug 'Glench/Vim-Jinja2-Syntax', {'for': ['html', 'j2', 'htm', 'jinja2', 'sls']}

" Ello poppet
"Plug 'rodjek/vim-puppet'

" TOML
"Plug 'cespare/vim-toml', {'for': 'toml'}

" Tmux.conf syntax
"Plug 'tmux-plugins/vim-tmux', {'for': 'tmux'}

" CSV
Plug 'chrisbra/csv.vim', {'for': 'csv'}

" Webdev syntax/helpers
Plug 'mattn/emmet-vim'
"autocmd BufNewFile,BufRead *.md setf markdown
"" Markdown
"Plug 'plasticboy/vim-markdown'
""Plug 'tpope/vim-markdown'

Plug 'aouelete/sway-vim-syntax'

""
"" Language: Python
""

Plug 'hdima/python-syntax', {'for': ['python']}
"Plug 'okcompute/vim-python-motions', {'for': ['python']}

" Jedi:
Plug 'davidhalter/jedi-vim', {'for': ['python']}
"Plug 'python-rope/ropevim', {'for': ['python']}

"" Indenting:
"Plug 'hynek/vim-python-pep8-indent'
"Plug 'michaeljsmith/vim-indent-object'

"" Folding:
"Plug 'tmhedberg/SimpylFold'

" Testing:
Plug 'alfredodeza/pytest.vim', {'for': ['python']}

" Formatting: Better formatter (yapf > autopep8)
"
" The style used to format the buffer is checking the following in order:
" 1. b:yapf_format_style
" 2. Local '.yapf.style' for the file's project (or current directory for unsaved files)
" 3. g:yapf_format_style
" 4. pep8
"
"Plug 'pignacio/vim-yapf-format'
"let g:yapf_format_style = 'google'
""let g:yapf_format_yapf_location = '/path/to/f'


""
"" Hashivim
""

"" Vim plugins/syntax for hashicorp tooling
"" Run Terraform files with tab compl
"Plug 'hashivim/vim-terraform'  "
"Plug 'hashivim/vim-packer'
"Plug 'hashivim/vim-consul'
"Plug 'hashivim/vim-vagrant'
"Plug 'hashivim/vim-vaultproject'
"Plug 'hashivim/vim-nomadproject'
"Plug 'hashivim/vim-ottoproject'


""
"" Comp
""

if has('nvim')
    " deoplete-jedi: "jedi" source for Python
    Plug 'zchee/deoplete-jedi', {'for': ['python']}

    " Zsh completion
    Plug 'zchee/deoplete-zsh', {'for': ['zsh', 'sh']}

    " deoplete-go: "go" source for Go
    Plug 'zchee/deoplete-go', {'for': ['go']}

    " deoplete-ruby: "ruby" source for Ruby language
    Plug 'fishbullet/deoplete-ruby', {'for': ['ruby']}

    " neco-syntax: "syntax" source
    Plug 'Shougo/neco-syntax', {'for': ['vim']}

    " vimshell: "vimshell" source for vimshell
    Plug 'Shougo/vimshell.vim'

    " neco-ghc: "ghc" source for Haskell
    Plug 'eagletmt/neco-ghc', {'for': ['haskell']}

    " vim-racer: "racer" source for Rust
    Plug 'racer-rust/vim-racer', {'for': ['rust']}

    " deoplete-github: "github" source for "gitcommit" filetype
    "Plug 'SevereOverfl0w/deoplete-github', {'for': ['gitcommit']}

    " deoplete-clang: "clang" source for C/C++
    Plug 'zchee/deoplete-clang', {'for': ['c', 'cpp', 'objc', 'objcpp']}
"
    " deoplete-d: "d" source for D language
    Plug 'landaire/deoplete-d', {'for': ['d']}

    "" deoplete-rtags: "rtags" source for "c", "cpp", "objc" and "objcpp" filetypes
    "Plug 'LuXuryPro/deoplete-rtags'

    " elixir.nvim: "elixir" source for Elixir
    "Plug 'awetzel/elixir.nvim'
    Plug 'slashmili/alchemist.vim', {'for': ['elixir']}

    "" deoplete-ternjs: "ternjs" source for JavaScript
    "Plug 'carlitux/deoplete-ternjs', {'for': ['javascript', 'json']}

    "" deoplete-flow: "flow" source for flowscript (statically typed JavaScript)
    Plug 'steelsojka/deoplete-flow', {'for': ['flow']}

    "" deoplete-typescript: "typescript" source for typescript
    Plug 'mhartington/deoplete-typescript', {'for': ['javascript', 'json', 'typescript']}
    let g:deoplete#sources#tss#javascript_support = 1

    " Dart
    Plug 'villainy/deoplete-dart', { 'for': 'dart' }

    "" perlomni.vim: "perlomni" source for Perl
    "Plug 'c9s/perlomni.vim'

    "" deoplete-swift: "swift" source for Swift
    "Plug 'landaire/deoplete-swift'

    "" async-clj-omni: "async_clj" source for Clojure
    "Plug 'SevereOverfl0w/async-clj-omni'

    "" neovim-intellij-complete-deoplete: "intellij" source for Intellij IDE
    "Plug 'vhakulinen/neovim-intellij-complete-deoplete'

    " webcomplete.vim: "webcomplete" source for browser opened pages
    "Plug 'thalesmello/webcomplete.vim'

    Plug 'zchee/deoplete-docker', {'for': ['dockerfile']}
else
    "Plug 'Valodim/vim-zsh-completion'
    "Gautocmdft zsh,sh let b:completefunc=zsh_completion#Complete
endif
