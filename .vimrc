" .ideavimrc is a configuration file for IdeaVim plugin. It uses
"   the same commands as the original .vimrc configuration.
" You can find a list of commands here: https://jb.gg/h38q75
" Find more examples here: https://jb.gg/share-ideavimrc

" VIM Settings
set scrolloff=10
set incsearch
set showmode
set relativenumber 
set cursorline
set ignorecase

" Don't use Ex mode, use Q for formatting.
map Q gq

" status bar

map <space> <nop>
let mapleader="\<space>"

imap kj <Esc>
vmap kj <Esc>

nmap <leader>o <Action>(PreviousTab)<CR>
nmap <leader>p <Action>(NextTab)
map <leader>k <Action>(SplitVertically)
map <leader>w <Action>(SaveAll)
map <leader>q <Action>(CloseContent)
map <leader>k <Action>(MoveTabRight)
map <leader>j <Action>(MoveTabLeft)
map <leader>h <Action>(PrevSplitter)
map <leader>l <Action>(NextSplitter)
map <leader>r <Action>(RenameElement)
map <leader>e <Action>(GotoNextError)
map <leader><S-e> <Action>(GotoPreviousError)

map <leader>d <Action>(EditorDuplicate)

map gd <Action>(GotoDeclaration)
map gf <Action>(FindInPath)
map gr <Action>(FindUsages)
nmap gh <Action>(ShowHoverInfo)

" --- Enable IdeaVim plugins https://jb.gg/ideavim-plugins

" Highlight copied text
Plug 'machakann/vim-highlightedyank'
" Commentary plugin
Plug 'tpope/vim-commentary'
set which-key
set timeoutlen=5000


"" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
"" Map \r to the Reformat Code action
"map \r <Action>(ReformatCode)

"" Map <leader>d to start debug
"map <leader>d <Action>(Debug)

"" Map \b to toggle the breakpoint on the current line
"map \b <Action>(ToggleLineBreakpoint)

