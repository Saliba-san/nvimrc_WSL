"Plugins Settings
"Completion
let g:completion_trigger_character = ['.', '::']
"Rooter
let g:rooter_patterns = ['=src','.git']
"NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeToggleVSC<CR>
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
