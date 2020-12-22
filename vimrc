""Set line number
set number


""Set char-code
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8


"" Set 'backspace''s behavior on Insert mode
set backspace=indent,eol,start


"" Tab's size on visualize
set tabstop=4
"" Tab's size on data
set shiftwidth=4
set expandtab

"" Visualize Tab and space
set list
set listchars=tab:>.,trail:_


""Set short cut
inoremap <silent> jj <ESC>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>


""Set Vim's backup
set backup
set backupdir=~/.vim/backup
au BufWritePre * let &bex = '-' . strftime("%Y%m%d-%H%M%S") . '.vimbackup'
set swapfile
set directory=~/.vim/backup/swp
set undofile
set undodir=~/.vim/backup/undo


""let mapleader="\<Space>"


if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

""Mac用 
if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

