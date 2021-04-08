" Remaps
vnoremap Y "+y
noremap S :%s//gc<left><left><left>
noremap <backspace> :noh<CR>
noremap <A-w> :set nowrap!<CR>
noremap <A-p> :set paste!<CR>
nnoremap <leader>l <cmd>call setqflist([])<cr>
" Window
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Tabs
map <silent> <A-t> :tabnew<cr>
map <silent> <A-c> :tabclose<cr>
map <silent> <A-h> :tabp<cr>
map <silent> <A-l> :tabn<cr>
map <silent> <A-L> :+tabm<cr>
map <silent> <A-H> :-tabm<cr>
"Terminal
tnoremap <ESC> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-h>
tnoremap <C-j> <C-\><C-n><C-j>
tnoremap <C-k> <C-\><C-n><C-k>
tnoremap <C-l> <C-\><C-n><C-l>
" Editor
nnoremap <Left> <cmd>vertical resize +5<CR>
nnoremap <Right> <cmd>vertical resize -5<CR>
nnoremap <Up> <cmd>resize +5<CR>
nnoremap <Down> <cmd>resize -5<CR>
nnoremap x "_x
vnoremap x "_x
" Normal
noremap ;j <cmd>tabprev<CR>
noremap ;k <cmd>tabnext<CR>
" Insert
inoremap ;" ""<left>
inoremap ;' ''<left>
inoremap ;( ()<left>
inoremap ;[ []<left>
inoremap ;{ {}<left>
inoremap {<CR> <CR>{<CR>}<C-o>O
inoremap ;{<CR> {<CR>}<ESC>O
inoremap ;{;<CR> {<CR>};<ESC>O
inoremap -- <Esc>/<++><Enter>c4l
inoremap ;m <++>
" Visual
vnoremap ;" "vc"<C-r>v"<ESC>
vnoremap ;' "vc'<C-r>v'<ESC>
vnoremap ;( "vc(<C-r>v)<ESC>
vnoremap ;[ "vc[<C-r>v]<ESC>
vnoremap ;{ "vc{<C-r>v}<ESC>

"Tabbing
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >
vnoremap <S-Tab> <
vmap > >gv
vmap < <gv

"LSP
nnoremap gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap gD <cmd>tab split<CR><cmd>lua vim.lsp.buf.definition()<CR>
nnoremap gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap gt <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>ds <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <leader>ws <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <leader>gd <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <leader>wa <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <leader>wr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <leader>wl <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <leader>R <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>r <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <leader>e <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap [d <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap ]d <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <leader>q <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <leader>= <cmd>lua vim.lsp.buf.formatting()<CR>
vnoremap <leader>= <cmd>lua vim.lsp.buf.formatting()<CR><ESC>

"Telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fgr <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>fgf <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>fof <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fbt <cmd>lua require('telescope.builtin').current_buffer_tags()<cr>
nnoremap <leader>fbf <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fz <cmd>lua require('telescope.builtin').spell_suggest()<cr>
nnoremap <leader>fm <cmd>lua require('telescope.builtin').marks()<cr>
nnoremap <leader>km <cmd>lua require('telescope.builtin').keymaps()<cr>
"TelescopeLSP
nnoremap <leader>flr <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap <leader>flds <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>
nnoremap <leader>flws <cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>
nnoremap <leader>fld <cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>
nnoremap <leader>flw <cmd>lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>
nnoremap <leader>flca <cmd>lua require('telescope.builtin').lsp_code_actions()<cr>
"TelescopeGit
nnoremap <leader>fgc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>fgbc <cmd>lua require('telescope.builtin').git_bcommits()<cr>
nnoremap <leader>fgb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>fgs <cmd>lua require('telescope.builtin').git_status()<cr>
"TelescopeTreesitter
nnoremap <leader>ft <cmd>lua require('telescope.builtin').treesitter()<cr>

"Completion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)
