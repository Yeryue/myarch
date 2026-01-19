call plug#begin()
" vim-plug
Plug 'altercation/vim-colors-solarized'
Plug 'bleakwind/vim-filelist'
" Using Vundle
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1        "显示buffer编号
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#battery#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''

let g:gotham_airline_emphasised_insert = 0
hi comment cterm=italic
" Set 1 enable filelist (default: 0)
let g:filelist_enabled = 1
" Set 1 autostart filelist (default: 0)
let g:filelist_autostart = 1
" Position of the filelist window: 'left' or 'right' (default: 'left')
let g:filelist_position = 'left'
" Width of the filelist window (default: 30)
let g:filelist_winwidth = 30
" Default directory to show (default: getcwd())
let g:filelist_mainpath = getcwd()
" Set 1 Show hi vim --version| grep "clipboard"dden files (default: 0)
let g:filelist_showhide = 1
" Set Bookmark place (default: $HOME.'/.vim/filelist')
let g:filelist_datapath = 'home/falcon/.vim/filelist'

" set highlight color mark
let g:filelist_hlsetmark     = '#A1ACA3'
" set highlight color icon
let g:filelist_hlseticon     = '#A1ACA3'
" Sets highlight color for closed folder icon
let g:filelist_hlfoldclose   = '#92BDE8'
" Sets highlight color for opened folder icon
let g:filelist_hlfoldopen    = '#92BDE8'
" Sets highlight color for regular files
let g:filelist_hlfiledefault = '#DDDDDD'
" Sets highlight color for executable files
let g:filelist_hlfileexecute = '#EEBE77'
" Sets highlight color for symbolic files
let g:filelist_hlfilesymlink = '#95D475'
" Sets highlight color for bookmark list title
let g:filelist_hlbmlisttitle = '#92BDE8'
" Sets highlight color for help list title
let g:filelist_hlhelplisttitle = '#92BDE8'
" Sets highlight color for help list key
let g:filelist_hlhelplistkey = '#EEBE77'
" Sets highlight color for help list description
let g:filelist_hlhelplistdes = '#A1ACA3'



"set autoindent
set number
set showmatch

hi NORMAL ctermbg=NONE guibg=NONE
hi NOTEXT ctermbg=NONE guibg=NONE

filetype on
set t_Co=256
set clipboard=unnamedplus
