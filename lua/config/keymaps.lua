-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- lua/config/keymaps.lua
vim.api.nvim_set_keymap("n", "<leader>dui", '<cmd>lua require("dapui").toggle()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>db",
  '<cmd>lua require("dap").toggle_breakpoint()<CR>',
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>dc", '<cmd>lua require("dap").continue()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>di", '<cmd>lua require("dap").step_into()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>do", '<cmd>lua require("dap").step_over()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>du", '<cmd>lua require("dapui").toggle()<CR>', { noremap = true, silent = true })
