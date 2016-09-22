set nocompatible             
filetype off                  
set expandtab
set clipboard+=unnamed
set nobackup
set ignorecase

set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin('$VIM/vimfiles/bundle/')
Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'The-NERD-tree'
Plugin 'taglist.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'powerline/powerline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tikhomirov/vim-glsl'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Chiel92/vim-autoformat'
Plugin 'airblade/vim-gitgutter'
" Plugin 'Valloric/YouCompleteMe'
call vundle#end()           

filetype plugin indent on    

syntax on
set number 
set autoindent
set guifont=Consolas:h17
inoremap jk <esc>
set guioptions-=m
set guioptions-=T "remove toolbar
set backspace=indent,eol,start
set shiftwidth=2
set tabstop=2
set expandtab

set hlsearch " highlight search results 
set encoding=utf-8
set fileencoding=utf-8

" The nerd tree plugin: use Shift + l to toggle
map <S-l>  :NERDTreeToggle<CR>
let g:NERDTreeMapOpenInTabSilent = '<2-LeftMouse>'
let NERDTreeMapOpenInTab='<ENTER>'

" ctags
nmap    <silent>    <F6>     <Esc>:!ctags  *<CR>
imap    <silent>    <F6>     <Esc>:w<CR>:!ctags  *<CR>
set autochdir


" neocomplete
" let g:neocomplete#enable_auto_select=1
let g:acp_enableAtStartup = 1
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><Space> pumvisible() ? "\<C-n>" : "\<Space>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" nerdcommenter
let mapleader=","
let NERDSpaceDelims=1


" copy
set clipboard=unnamed

colorscheme PaperColor

inoremap { {<CR>}<Esc>O<TAB>

" status line
set laststatus=2
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe

" ruler at 80
set colorcolumn=80

" enhanced highlight for cpp
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" set tab display
set guitablabel=\[%N\]\ %t\ %M 



" default start up directory
:cd C:\Users\bisai\Documents\


set virtualedit=onemore
set renderoptions=type:directx,renmode:5,taamode:1

" formatter
let g:formatdef_my_custom_cpp = '"astyle --mode=c --style=google"'
let g:formatters_cpp = ['my_custom_cpp']


