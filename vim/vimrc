syntax enable             " enable syntax highlighting
set number                " show line numbers
set cursorline            " highlight current line
set wildmenu              " enable auto-completion menu
set showmatch             " highlight matching [({})] on write
set incsearch             " start searching as characters are entered
set expandtab             " expand tabs to spaces
set softtabstop=4         " set tabs to 4 spaces
colorscheme badwolf

" Color Settings
" - Note that Git Bash is based on cygwin so we only get
"   8 colors
hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white


" FileType Settings
augroup configgroup
    autocmd!
    autocmd Filetype gitcommit setlocal textwidth=72   " Git Commit Messages
    autocmd Filetype conf setlocal textwidth=72        " Git Tag Messages
    autocmd Filetype markdown setlocal sw=4 ts=4 sts=4 " Markdown spaces
    autocmd Filetype md setlocal sw=4 ts=4 sts=4
augroup END