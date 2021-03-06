set nobackup
set nowritebackup
set noswapfile
set showtabline=2
set nocompatible

"Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()" let Vundle manage Vundle

set t_Co=256



" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github

Bundle  "astashov/vim-ruby-debugger.git"
Bundle  "msanders/snipmate.vim.git"
Bundle  "scrooloose/nerdtree.git"
Bundle  "timcharper/textile.vim.git"
Bundle  "tpope/vim-cucumber.git"
Bundle  "tpope/vim-fugitive.git"
Bundle  "tpope/vim-git.git"
Bundle  "tpope/vim-haml.git"
Bundle  "tpope/vim-markdown.git"
Bundle  "tpope/vim-rails.git"
Bundle  "tpope/vim-repeat.git"
Bundle  "tpope/vim-surround.git"
Bundle  "tpope/vim-vividchalk.git"
Bundle  "tsaleh/vim-align.git"
Bundle  "tsaleh/vim-shoulda.git"
Bundle  "tsaleh/vim-supertab.git"
Bundle  "tsaleh/vim-tcomment.git"
Bundle  "vim-ruby/vim-ruby.git"
Bundle  "jamis/fuzzyfinder_textmate"
Bundle  "vim-scripts/FuzzyFinder"
Bundle  "vim-scripts/L9"
Bundle  "vim-scripts/VimClojure"
Bundle  "kchmck/vim-coffee-script"

" vim-scripts repos on github
Bundle 'IndexedSearch'
Bundle 'jquery'

filetype plugin indent on



set syntax=on
filetype plugin indent on
:se enc=utf8
"source $VIMRUNTIME\gvimrc_example.vim
"source $VIMRUNTIME\mswin.vim
"behave mswin

set tw=80
:se number

set autoindent

:set softtabstop=2 shiftwidth=2 expandtab


" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
" filetype off 
" call pathogen#helptags()
" call pathogen#runtime_append_all_bundles()
" 

"caps lock maping
set <F13>=^[[25~


"search
map gr :grep <cword> *<CR>
map gr :grep <cword> %:p:h/*<CR>
map gR :grep \b<cword>\b *<CR>
map GR :grep \b<cword>\b %:p:h/*<CR>

" tab navigation like firefox 
:nmap <C-S-tab> :tabprevious<CR> 
:nmap <C-tab> :tabnext<CR> 
:map <C-S-tab> :tabprevious<CR>
:map <C-tab> :tabnext<CR> 
:imap <C-S-tab> <ESC>:tabprevious<CR>i 
:imap <C-tab> <ESC>:tabnext<CR>i 
:nmap <C-t> :tabnew<CR> 
:imap <C-t> <ESC>:tabnew<CR>

:nmap tn :tabnew<cr>
:nmap tj :tabnext<cr>
:nmap th :tabprevious<cr>

:nmap wk <C-ww>

"autocomplete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"clojure
"let clj_highlight_builtins = 1
"let clj_paren_rainbow = 1

"let g:SuperTabDefaultCompletionType = "context"

" nerd tree
nmap tt :NERDTreeToggle<cr>

" fuzzy finder
nmap ff :FufCoverageFile **/<CR>
nmap bb :FufBuffer **/<CR>

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

set guifont=Monaco
syntax on

" darkblue -- for those who prefer dark background
" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]

set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "darkblue"

hi Normal         guifg=#c0c0c0 guibg=#000040 ctermfg=gray ctermbg=black
hi ErrorMsg       guifg=#ffffff guibg=#287eff ctermfg=white ctermbg=lightblue
hi Visual         guifg=#8080ff guibg=fg  gui=reverse ctermfg=lightblue ctermbg=fg cterm=reverse
hi VisualNOS      guifg=#8080ff guibg=fg gui=reverse,underline   ctermfg=lightblue ctermbg=fg cterm=reverse,underline
hi Todo           guifg=#d14a14 guibg=#1248d1 ctermfg=red     ctermbg=darkblue
hi Search         guifg=#90fff0 guibg=#2050d0 ctermfg=white ctermbg=darkblue cterm=underline term=underline
hi IncSearch      guifg=#b0ffff guibg=#2050d0 ctermfg=darkblue ctermbg=gray

hi SpecialKey     guifg=cyan ctermfg=darkcyan
hi Directory      guifg=cyan ctermfg=cyan
hi Title          guifg=magenta gui=none ctermfg=magenta cterm=bold
hi WarningMsg     guifg=red ctermfg=red
hi WildMenu       guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg        guifg=#22cce2 ctermfg=lightblue
hi MoreMsg        ctermfg=darkgreen ctermfg=darkgreen
hi Question       guifg=green gui=none ctermfg=green cterm=none
hi NonText        guifg=#0030ff ctermfg=darkblue

hi StatusLine     guifg=blue guibg=darkgray gui=none              ctermfg=blue ctermbg=gray term=none cterm=none
hi StatusLineNC   guifg=black guibg=darkgray gui=none             ctermfg=black ctermbg=gray term=none cterm=none
hi VertSplit      guifg=black guibg=darkgray gui=none             ctermfg=black ctermbg=gray term=none cterm=none

hi Folded         guifg=#808080 guibg=#000040                     ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi FoldColumn     guifg=#808080 guibg=#000040                     ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi LineNr         guifg=#90f020                   ctermfg=green cterm=none

hi DiffAdd        guibg=darkblue  ctermbg=darkblue term=none cterm=none
hi DiffChange     guibg=darkmagenta ctermbg=magenta cterm=none
hi DiffDelete     ctermfg=blue ctermbg=cyan gui=bold guifg=Blue guibg=DarkCyan
hi DiffText       cterm=bold ctermbg=red gui=bold guibg=Red

hi Cursor         guifg=#000020 guibg=#ffaf38 ctermfg=bg ctermbg=brown
hi lCursor        guifg=#ffffff guibg=#000000 ctermfg=bg ctermbg=darkgreen


hi Comment        guifg=#80a0ff ctermfg=darkred
hi Constant       ctermfg=magenta guifg=#ffa0a0 cterm=none
hi Special        ctermfg=brown guifg=Orange cterm=none gui=none
hi Identifier     ctermfg=cyan guifg=#40ffff cterm=none
hi Statement      ctermfg=yellow cterm=none guifg=#ffff60 gui=none
hi PreProc        ctermfg=magenta guifg=#ff80ff gui=none cterm=none
hi type           ctermfg=green guifg=#60ff60 gui=none cterm=none
hi Underlined     cterm=underline term=underline
hi Ignore         guifg=bg ctermfg=bg

" suggested by tigmoid, 2008 Jul 18
hi Pmenu guifg=#c0c0c0 guibg=#404080
hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
hi PmenuSbar guifg=blue guibg=darkgray
hi PmenuThumb guifg=#c0c0c0
