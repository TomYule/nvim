return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    -- 确保 defaults 表存在
    opts.defaults = opts.defaults or {}

    -- 定义自定义的中英双语标签
    local translations = {
      -- ================= 组名 (Groups) =================
      ["<leader>b"] = { name = "📂 Buffers (缓冲区)" },
      ["<leader>c"] = { name = "💻 Code (代码操作)" },
      ["<leader>d"] = { name = "🐞 Debug (调试)" },
      ["<leader>f"] = { name = "🔍 Find (查找)" },
      ["<leader>g"] = { name = "🔀 Git (版本控制)" },
      ["<leader>l"] = { name = "🔎 LSP (语言服务)" },
      ["<leader>n"] = { name = "🔔 Notify (通知)" },
      ["<leader>p"] = { name = "📦 Project (项目)" },
      ["<leader>q"] = { name = "🚪 Quit (退出)" },
      ["<leader>s"] = { name = "🔍 Search (搜索)" },
      ["<leader>t"] = { name = "💻 Terminal (终端)" },
      ["<leader>u"] = { name = "🎨 UI (界面设置)" },
      ["<leader>w"] = { name = "🪟 Windows (窗口)" },
      ["<leader>x"] = { name = "❌ Diag (诊断)" },

      -- ================= 常用快捷键 (Keys) =================
      
      -- Find (查找)
      ["<leader>ff"] = { "📄 Find File (查找文件)" },
      ["<leader>fg"] = { "📄 Git Files (Git 文件)" },
      ["<leader>fr"] = { "🕒 Recent (最近访问)" },
      ["<leader>fF"] = { "📂 Cwd Files (当前目录)" },
      ["<leader>fc"] = { "📄 Config (配置文件)" },
      ["<leader>fp"] = { "📂 Projects (项目列表)" },
      ["<leader>,"]  = { "📋 Buffers (缓冲区列表)" },
      ["<leader>/"]  = { "🔍 Grep (Root) (全局搜索)" },
      ["<leader>:"]  = { "📜 Commands (命令历史)" },

      -- Search (搜索)
      ["<leader>sg"] = { "🔍 Grep (全局搜索)" },
      ["<leader>sw"] = { "🔍 Word (当前词)" },
      ["<leader>sW"] = { "🔍 Visual (选区词)" },
      ["<leader>sh"] = { "📖 Help (帮助文档)" },
      ["<leader>si"] = { "🔤 Icons (图标)" },
      ["<leader>sd"] = { "❌ Diagnostics (诊断)" },

      -- Buffers (缓冲区)
      ["<leader>bd"] = { "❌ Delete (关闭)" },
      ["<leader>bn"] = { "➡️ Next (下一个)" },
      ["<leader>bp"] = { "⬅️ Prev (上一个)" },
      ["<leader>bl"] = { "⬅️ Left (关闭左侧)" },
      ["<leader>br"] = { "➡️ Right (关闭右侧)" },

      -- Git (版本控制)
      ["<leader>gs"] = { "📋 Status (状态)" },
      ["<leader>gd"] = { "📊 Diff (差异)" },
      ["<leader>gb"] = { "📦 Blame (追溯)" },
      ["<leader>gc"] = { "📜 Commits (提交)" },
      ["<leader>gi"] = { "📥 Issues (问题)" },
      ["<leader>gp"] = { "🔀 Pull Requests (拉取请求)" },

      -- Code / LSP (代码)
      ["<leader>cc"] = { "💡 Actions (代码操作)" },
      ["<leader>cf"] = { "✨ Format (格式化)" },
      ["<leader>cr"] = { "✏️ Rename (重命名)" },
      ["<leader>cs"] = { "📝 Symbols (符号)" },

      -- UI (界面)
      ["<leader>ul"] = { "🔆 Line (行号)" },
      ["<leader>uw"] = { "🌊 Wrap (换行)" },
      ["<leader>ui"] = { "🔹 Indent (缩进线)" },

      -- Windows (窗口)
      ["<leader>wd"] = { "❌ Delete (关闭)" },
      ["<leader>wm"] = { "🔲 Maximize (最大化)" },
      ["<leader>wv"] = { "⬇️ Split Vert (垂直分割)" },
      ["<leader>ws"] = { "➡️ Split Horz (水平分割)" },
    }

    -- 将翻译应用到 defaults 中 (合并而不是覆盖)
    for k, v in pairs(translations) do
      opts.defaults[k] = v
    end
  end,
}
