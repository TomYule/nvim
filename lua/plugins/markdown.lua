return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_auto_close = 1
    vim.g.mkdp_open_ip = "127.0.0.1"
    vim.g.mkdp_port = "9527" -- Unique port to avoid conflicts
    vim.g.mkdp_browser = ""  -- Use system default browser
  end,
  keys = {
    { "<leader>mp", "<cmd>MarkdownPreview<cr>", desc = "Markdown Preview (Browser)" },
    { "<leader>mt", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview Toggle" },
  },
}