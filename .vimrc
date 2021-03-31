call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'preservim/nerdcommenter'
Plug 'prettier/vim-prettier'
call plug#end()

packloadall
colorscheme onedark
set background=dark
set number
set expandtab
set tabstop=2				" To match the sample file
set noexpandtab		 " Use tabs, not spaces
%retab!						 " Retabulate the whole fileset belloff=all
syntax on
set hlsearch
set incsearch
set listchars=tab:\|\ 
set list
set belloff=all
set nowrap
"mappings
map <C-n> :NERDTreeToggle <CR>

filetype plugin on
let g:vim_jsx_pretty_colorful_config = 1

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux		 's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
				if (has("nvim"))
								"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
								let $NVIM_TUI_ENABLE_TRUE_COLOR=1
				endif
				"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a		 895bfb064ea3e55476ac175162 >
				"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e342		 7b47286869aa4b96f2bfc1fe65b25cd >
				" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
				if (has("termguicolors"))
								set termguicolors
				endif
endif



"let g:airline_theme='onedark'

highlight LspCxxHlSymField guifg=#E06C75
highlight LspCxxHlSymNamespace guifg=#E06C75

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
				let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


nmap <Leader>p <Plug>(Prettier)

let g:prettier#config#print_width = 'auto'

let g:prettier#config#tab_width = 'auto'

let g:prettier#config#use_tabs = 'auto'

let g:prettier#config#parser = ''

let g:prettier#config#config_precedence = 'file-override'

let g:prettier#config#prose_wrap = 'preserve'

let g:prettier#config#html_whitespace_sensitivity = 'css'

let g:prettier#config#require_pragma = 'false'

let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line','lf')
