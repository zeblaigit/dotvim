" Chargement de Pathogen
call pathogen#incubate()
call pathogen#helptags()
" Activation indentation auto
set autoindent
" Redefinition des tabulations
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
" Activation detection automatique
filetype on
filetype plugin indent on
" Longueur maximale des lignes
set textwidth=79
" Activation coloration syntaxique
syntax on
if has("gui_running") 
    highlight SpellBad term=underline gui=undercurl guisp=Orange 
endif 
