" Vundle {{{

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'

Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'kristijanhusak/vim-multiple-cursors'
Plugin 'joom/vim-commentary'
Plugin 'vim-scripts/Align'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'Yggdroot/indentLine'
Plugin 'szw/vim-ctrlspace'
Plugin 'SirVer/ultisnips'
Plugin 'wesQ3/vim-windowswap'

"Front End

"Color Schemes
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
" }}}

" Plugin Settings {{{
let g:solarized_termcolors=256
let g:windowswap_map_keys = 0 "prevent default bindings
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" }}}

" Airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0 "change 0 to 1 if you have a powerline font
set laststatus=2
set t_Co=256
let g:airline_section_y = '%{strftime("%c")}'
" }}}

" NERDTree {{{
let g:NERDTreeMapChangeRoot =  "`"

nmap <Leader>] :NERDTreeTabsToggle<CR>
nnoremap <Space>c :NERDTreeCWD<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=0
let NERDTreeQuitOnOpen = 1
let NERDTreeIgnore=['\.pyc$', '\~$']
let NERDTreeShowLineNumbers = 1
let NERDTreeWinSize = 25

function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()
" }}}

" General {{{

set colorcolumn=80
set background=dark
colorscheme molokai
set nocompatible
filetype off
set foldmethod=marker
set linebreak
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:UltiSnipsExpandTrigger="<Leader><Tab>"
set number

syntax on
set mouse=a

filetype plugin indent on

set encoding=utf-8
set fileencodings=utf-8

set autoindent
set smartindent
set cindent
set background=dark
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set wildignore=*.pyc
set ignorecase
set smartcase
set hlsearch
set incsearch
set shiftround
set history=1000
set undolevels=1000
set noswapfile
set nobackup
set number
set linespace=3
set cursorline

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e


" }}}

" Some Useful Key Mappings {{{

"Deselecting highlights
nmap <Space>x :let @/=''<CR>

"System clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

"Keep the cursor in the same place after yank
vmap y ygv<Esc>

"Reload vimrc
nmap <F5> :source ~/.vimrc<CR>

"Paste mode toggle
set pastetoggle=<F5><F5>

"Keep selection after indent
vnoremap > ><CR>gv
vnoremap < <<CR>gv

" "Camel case motion (with shift)
map <Space>w <Plug>CamelCaseMotion_w
map <Space>b <Plug>CamelCaseMotion_b
map <Space>e <Plug>CamelCaseMotion_e
" }}}

" Highlight chars over 80
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%>80v.\+/

highlight Normal ctermbg=none
highlight NonText ctermbg=none
