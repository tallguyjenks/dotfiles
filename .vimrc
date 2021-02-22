"=================================="
"             LEADER               "
"=================================="
        " ~~~~~ Set Leader Character
                let mapleader =","
"=================================="
"          Miscellaneous           "
"=================================="
        " ~~~~~ Make inner change text motions extendeded (*nixcasts)
                let items = [ "<bar>", "\\", "/", ":", ".", "*", "_" ]
                for item in items
                   exe "nnoremap yi".item." T".item."yt".item
                   exe "nnoremap ya".item." F".item."yf".item
                   exe "nnoremap ci".item." T".item."ct".item
                   exe "nnoremap ca".item." F".item."cf".item
                   exe "nnoremap di".item." T".item."dt".item
                   exe "nnoremap da".item." F".item."df".item
                   exe "nnoremap vi".item." T".item."vt".item
                   exe "nnoremap va".item." F".item."vf".item
                endfor
        " ~~~~~ Additional Options
                set background=light " Use colors that suit a dark background
                set wildcharm=<Tab> " for tab autocompletion with the AutoComplPop plugin
                set lazyredraw " dont redraw screen during macro execution
                set shortmess+=c " no status bar spam for the AutoComplPop plugin
                set completeopt=menuone,longest " Completion Options for the AutoComplPop plug
                set wildmenu " Tab through menu lists
                set backspace=indent,eol,start " Allow backspacing over these items
                set conceallevel=0 " Dont hide my shit
                set nobackup " Do not mak backup files and clog up the works
                set noswapfile " Dont use swap files, they're annoying
                set go=a " Hide GuiOptions
                set mouse=a " Enable mouse usage
                set nohlsearch " disable search highlighting
                set clipboard=unnamed,unnamedplus " Allow copied vim text to also be added to clipboard
                set nospell " When on spell checking will be done
                set nocompatible " Dont worry about VI compatability, do yo thang
                set encoding=utf-8 " Use an encoding that supports unicode.
                set fileencoding=utf-8 " Set file encoding
                set number relativenumber " line numbers and relative line numbers
                set tabstop=4 " The width of a TAB is set to 4.
                set shiftwidth=4 " Indents will have a width of 4
                set softtabstop=4 " Sets the number of columns for a TAB
                set expandtab " Expand TABs to spaces
                set wildmode=longest,list,full " Enable autocompletion:
                set autoindent " New lines inherit indentation of preceding lines
                set scrolloff=999 " keep cursor in middle of screen at all times
                set ignorecase " search ignoring case
                "set cursorline " show me what line im on
                filetype plugin on " File type detection
                syntax on " Turn on syntax highlighting
        " ~~~~~ make 'Y' make sense
                map Y y$
        " ~~~~~ Highlight white space and tab characters
                " exec "set listchars=tab:\u00B7\u00B7,trail:\u2423,eol:¬,nbsp:~"
                exec "set listchars=tab:\u00B7\u00B7,trail:\u2423,nbsp:~"
                set list
        " ~~~~~ Highlight trailing whitespace with RED
                autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
                autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
                highlight EOLWS ctermbg=red guibg=red
        " ~~~~~ Disables automatic commenting on newline:
                autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
        " ~~~~~ Navigating with guides
                inoremap <leader><leader> <Esc>/<++><CR>"_c4l
                vnoremap <leader><leader> <Esc>/<++><CR>"_c4l
                map <leader><leader> <Esc>/<++><CR>"_c4l
