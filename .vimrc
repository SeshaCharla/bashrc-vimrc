set encoding=utf-8
set fileencoding=utf-8
syntax enable	" enable syntax processing
set tabstop=4	" number of visual spaces per TAB
"expandtabs in python files only
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
set autoindent
set shiftwidth=4	" Size of indent
set number relativenumber	" show line numbers
set ruler
set showcmd	" show command in bottom bar
set cursorline	" highlight current line
filetype plugin indent on	" load filetype-specific indent files
set showmatch	" highlight matching [{()}]
set incsearch	" search as characters are entered
set hlsearch	" highlight matches
set ignorecase
set smartcase
set nowrap
set textwidth=79
set fileformat=unix
autocmd BufWritePre * %s/\s\+$//e	"Remove trailing white spaces.
colorscheme codedark

"Enable spell check for tex and text files and underline the missspellt
set spell spelllang=en_gb
augroup spellcheckline
	autocmd!
	autocmd Filetype text hi SpellBad cterm=underline
	autocmd Filetype tex hi SpellBad cterm=underline
	autocmd Filetype plaintex hi SpellBad cterm=underline
augroup END

" To adaptively toggle between relativenumber and number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" Hilight self in python
augroup selfhighlight
	autocmd!
	autocmd Filetype python highlight SELF ctermfg=blue
	autocmd Filetype python match SELF /self/
augroup END