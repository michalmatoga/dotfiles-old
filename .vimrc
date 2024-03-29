call pathogen#infect() 
syntax on
set autoindent
set shiftwidth=2
set tabstop=4
set expandtab
set nobackup
set noswapfile
filetype plugin indent on
:colorscheme desert
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
set number
set incsearch
set ignorecase
set tags=.vim/ctags
:nnoremap <Leader>c :set cursorline!<CR>
inoremap jj <ESC>
autocmd BufLeave,FocusLost * silent! wall
autocmd vimenter * NERDTree
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplUseSingleClick = 1
let g:syntastic_mode_map = { 'mode': 'active',  'active_filetypes': ['js', 'php', 'html'],  'passive_filetypes': ['puppet'] }
let g:svndiff_autoupdate = 1 
au BufRead,BufNewFile *.twig set filetype=htmljinja
au BufRead,BufNewFile *.twig.html set filetype=htmljinja
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END
if has("autocmd")
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif
