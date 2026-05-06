return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      actions = {
        smart_open = function(picker)
          local item = picker:current()
          local path = item and (item.file or item.filename)
          if not path then return end

          -- 判断是否为 Markdown 文件
          if path:match("%.md$") or path:match("%.markdown$") then
            -- 逻辑：先打开文件，然后等待插件加载并启动预览
            vim.cmd("edit " .. vim.fn.fnameescape(path))
            vim.defer_fn(function()
              -- 尝试运行预览命令
              if pcall(require, "markdown_preview") then
                vim.cmd("MarkdownPreview")
              else
                vim.notify("Markdown Preview plugin failed to load", vim.log.levels.WARN)
              end
            end, 500)
          else
            -- 其他文件：使用系统默认软件打开
            vim.ui.open(path)
          end
        end,
      },
      win = {
        input = {
          keys = {
            -- <C-o> 智能打开（md 文件进浏览器预览，其他进默认软件）
            ["<C-o>"] = { "smart_open", mode = { "n", "i" }, desc = "Smart Open (MD->Browser)" },
          },
        },
        list = {
          keys = {
            ["<C-o>"] = { "smart_open", mode = { "n" }, desc = "Smart Open (MD->Browser)" },
          },
        },
      },
    },
  },
}
