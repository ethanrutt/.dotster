return {
   -- Merge conflicts and other Git features
   'tpope/vim-fugitive',
   config = function()
      vim.keymap.set('n', '<leader>gv', '<cmd>Gvdiffsplit!<CR>', { desc = '[V]ertical diff split' })
      vim.keymap.set('n', '<leader>gh', '<cmd>diffget //2<CR>', { desc = 'Diffget left change into conflict' })
      vim.keymap.set('n', '<leader>gl', '<cmd>diffget //3<CR>', { desc = 'Diffget right change into conflict' })
      vim.keymap.set('n', '<leader>gs', '<cmd>Git status<CR>', { desc = '[G]it [S]tatus' })
   end
}

