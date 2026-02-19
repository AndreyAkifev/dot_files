" Stop terminal queries leaking into Vim
if has('termresponse')
  set t_u7=
  set t_RF=
  set t_RB=
  set t_RV=
endif
filetype plugin indent on
set encoding=utf-8 
set nocompatible 

if empty(glob('~/.vim/autoload/plug.vim')) 
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
    \ https://raw.githubusercontent.com/junegunn/vim-plug/refs/tags/0.14.0/plug.vim 
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

"Darcula theme
Plug 'blueshirts/darcula'

"Status bar enhancement
Plug 'vim-airline/vim-airline'

"Icons
Plug 'ryanoasis/vim-devicons'

"FS Explorer
Plug 'preservim/nerdtree'

"Easy cursor motion
Plug 'easymotion/vim-easymotion'

call plug#end()

"Configure plugins

"blueshirts/darcula theme config
syntax enable
colorscheme darcula

"vim-airline/vim-airline configurations
let g:airline#extensions#keymap#enabled = 0 
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" 
let g:Powerline_symbols='unicode'
let g:airline#extensions#xkblayout#enabled = 0 
let g:airline#extensions#tabline#enabled = 1

"easymotion/vim-easymotion bindings
map <Leader> <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

