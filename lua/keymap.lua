-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- some commands for navigating tabs
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close tab' })
vim.keymap.set('n', '<leader>to', ':tabonly<CR>', { desc = 'Close all other tabs' })

-- Keybinds for problems
-- vim.api.nvim_set_keymap(
--   'n',
--   '<leader>pb',
--   ':Telescope diagnostics bufnr=0<CR>',
--   { noremap = true, silent = true, desc = 'Show [P]roblems in current [B]uffer' }
-- )
-- vim.api.nvim_set_keymap('n', '<leader>pl', ':lua vim.diagnostic.setloclist', { noremap = true, silent = true, desc = '[P]roblems: show [L]ist' })
vim.keymap.set('n', '<leader>pl', vim.diagnostic.setloclist, { desc = '[P]roblems: show [L]ist' })
vim.api.nvim_set_keymap('n', '<leader>pw', ':Telescope diagnostics<CR>', { noremap = true, silent = true, desc = 'Show [P]roblems in [W]orkspace' })
vim.api.nvim_set_keymap('n', '<leader>pn', ':lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true, desc = 'Jump to the next problem' })
vim.api.nvim_set_keymap('n', '<leader>pN', ':lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true, desc = 'Jump to the previous problem' })
vim.api.nvim_set_keymap('n', '<leader>pf', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true, desc = 'Show [P]roblem [F]ixes' })

-- Keybinds for vim-tree
vim.api.nvim_set_keymap('n', '<leader>fo', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = '[F]ile view [O]pen' })
vim.api.nvim_set_keymap('n', '<leader>fr', ':NvimTreeRefresh<CR>', { noremap = true, silent = true, desc = '[F]ile view [R]efresh' })
vim.api.nvim_set_keymap('n', '<leader>ff', ':NvimTreeFindFile<CR>', { noremap = true, silent = true, desc = '[F]ile view [F]ind' })

-- Keybinds for debugger
vim.api.nvim_set_keymap(
  'n',
  '<leader>db',
  ":lua require'dap'.toggle_breakpoint()<CR>",
  { noremap = true, silent = true, desc = '[D]ebugger: toggle [B]reakpoint' }
)
vim.api.nvim_set_keymap('n', '<leader>dc', ":lua require'dap'.continue()<CR>", { noremap = true, silent = true, desc = '[D]ebugger: [C]ontinue' })
vim.api.nvim_set_keymap('n', '<leader>dso', ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true, desc = '[D]ebugger: [S]tep [O]ver' })
vim.api.nvim_set_keymap('n', '<leader>dsi', ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true, desc = '[D]ebugger: [S]tep [I]nto' })
vim.api.nvim_set_keymap('n', '<leader>dui', ":lua require'dapui'.toggle()<CR>", { noremap = true, silent = true, desc = '[D]ebuger: [U][I]' })
