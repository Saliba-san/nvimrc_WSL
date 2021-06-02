"Plugins Settings
"Rooter
let g:rooter_patterns = ['=src','.git']
"NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeToggleVCS<CR>
nnoremap <leader>m :Bookmark<CR>
let g:NERDTreeDirArrowExpandable = '~'
let g:NERDTreeDirArrowCollapsible = '+'
let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ 'Modified'  :'o',
      \ 'Staged'    :'+',
      \ 'Untracked' :'*',
      \ 'Renamed'   :'->',
      \ 'Unmerged'  :'=',
      \ 'Deleted'   :'x',
      \ 'Dirty'     :'x',
      \ 'Ignored'   :'x',
      \ 'Clean'     :'c',
      \ 'Unknown'   :'?',
      \ }
let g:NERDTreeGitStatusConcealBrackets = 1
"Vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:tex_conceal = ""
let g:vim_markdown_math = 1
"Calcurse
autocmd BufRead,BufNewFile /private/var/folders/* set filetype=markdown
