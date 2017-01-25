syntax on
set showmatch      " Highlight matching brace
set visualbell     " Visual bell instaed of beeping
set hlsearch       " Highlight all search results
set smartcase      " Enable smart case search
set ignorecase     " Always case insensitive
set incsearch      " Search strings incrementally
set autoindent     " Auto-indent new lines
set smartindent    " Enable smart indent
set shiftwidth=2   " Number of auto-indent spaces
set smarttab       " Enable smart tabs
set softtabstop=2  " Number of spaces per tab
set ruler          " Show row and column
set undolevels=100 " Number of undo levels
set mouse=a        " Allow mouse input
set backspace=indent,eol,start

execute pathogen#infect()
