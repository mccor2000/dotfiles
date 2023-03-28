require('telescope').setup({
  defaults = {
    file_ignore_patterns = { 
      'dist', 'build', 'target', 'out', 
      'node_modules', 'deps', 
      'tmp', 'cache', 'logs', 'log' 
    }
  },
})

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.search_history, {})
vim.keymap.set('n', '<leader>fc', builtin.command_history, {})

vim.keymap.set('n', '<C-p>', builtin.git_files, {})

