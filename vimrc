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
" Activation completion python
au FileType python set omnifunc=pythoncomplete#Complete
" Activation completion js
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" Activation completion html
au FileType html set omnifunc=htmlcomplete#CompleteTags
" Activation completion css
au FileType css set omnifunc=pythoncomplete#CompleteCSS
" Definition type completion supertab
let g:SuperTabDefaultCompletionType="context"
" Activation visualisation documentation
set completeopt=menuone,longest,preview
" Activation de la complétion pour Django
function! SetAutoDjangoCompletion()
    let l:tmpPath   = split($PWD, '/')
    let l:djangoVar = tmpPath[len(tmpPath)-1].'.settings'
    let $DJANGO_SETTINGS_MODULE=djangoVar
    echo 'Activation de la complétion Django avec : '.djangoVar
    return 1
endfunction
