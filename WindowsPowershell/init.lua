vim.g.mapleader = ' '

-- Set highlight on search
vim.o.hlsearch = false

if vim.g.vscode then
	-- Telescope style file opening
	vim.keymap.set('n',  '<leader>sf', '<cmd>lua require("vscode-neovim").action("workbench.action.files.openFile")<CR>') 

    -- Telescope style live grep
    vim.keymap.set('n', '<leader>sg', '<cmd>lua require("vscode-neovim").action("workbench.action.findInFiles")<CR>')

	-- Toggle sidebar
	vim.keymap.set('n',  '<leader>b',  '<cmd>lua require("vscode-neovim").action("workbench.action.toggleSidebarVisibility")<CR>')

    -- Visual block mode
    vim.keymap.set('n', '<C-q', '<cmd>norm <C-v><CR>')
else
	-- Make line numbers default
	vim.wo.number = true

	-- Enable mouse mode
	vim.o.mouse = 'a'

	-- Enable break indent
	vim.o.breakindent = true

	-- Save undo history
	vim.o.undofile = true

	-- Case-insensitive searching UNLESS \C or capital in search
	vim.o.ignorecase = true
	vim.o.smartcase = true

	-- Keep signcolumn on by default
	vim.wo.signcolumn = 'yes'

	-- Decrease update time
	vim.o.updatetime = 250
	vim.o.timeoutlen = 300

	-- Set completeopt to have a better completion experience
	vim.o.completeopt = 'menuone,noselect'

	-- NOTE: You should make sure your terminal supports this
	vim.o.termguicolors = true

	-- 4 spaces instead of tab character
	vim.opt.tabstop = 4
	vim.opt.shiftwidth = 0
	vim.opt.expandtab = true

	-- colorcolumn at 80 chars
	vim.opt.colorcolumn = "80"

	-- unbind leader key by itself
	vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
end

