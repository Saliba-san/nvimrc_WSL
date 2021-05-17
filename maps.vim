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
nnoremap <A-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
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
nnoremap <leader>tf <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>tg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>tgr <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>tgf <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>tof <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap <leader>tb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>tbt <cmd>lua require('telescope.builtin').current_buffer_tags()<cr>
nnoremap <leader>tbf <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
nnoremap <leader>th <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>tz <cmd>lua require('telescope.builtin').spell_suggest()<cr>
nnoremap <leader>tm <cmd>lua require('telescope.builtin').marks()<cr>
nnoremap <leader>tm <cmd>lua require('telescope.builtin').keymaps()<cr>
"TelescopeLSP
nnoremap <leader>tlr <cmd>lua require('telescope.builtin').lsp_references()<cr>
nnoremap <leader>tlds <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>
nnoremap <leader>tlws <cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>
nnoremap <leader>tld <cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>
nnoremap <leader>tlw <cmd>lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>
nnoremap <leader>tlca <cmd>lua require('telescope.builtin').lsp_code_actions()<cr>
"TelescopeGit
nnoremap <leader>tgc <cmd>lua require('telescope.builtin').git_commits()<cr>
nnoremap <leader>tgbc <cmd>lua require('telescope.builtin').git_bcommits()<cr>
nnoremap <leader>tgb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>tgs <cmd>lua require('telescope.builtin').git_status()<cr>
"TelescopeTreesitter
nnoremap <leader>tt <cmd>lua require('telescope.builtin').treesitter()<cr>

imap <expr> <C-l> vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Tab>'
smap <expr> <C-l> vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Tab>'
imap <expr> <C-h> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'
smap <expr> <C-h> vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'
inoremap <silent><expr> <CR> compe#confirm('<CR>')
