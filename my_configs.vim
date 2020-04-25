" Keymappings
nnoremap ; :
vnoremap ; :
inoremap jk <ESC>

" Display line number
set number

" Color Scheme
syntax enable
set background=light
colorscheme solarized

call togglebg#map("<F5>")

" vim-markdown-preview
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_toggle=2
