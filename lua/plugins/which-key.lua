return {
  "folke/which-key.nvim",
  -- 叶子节点（具体快捷键）通过 keys + desc 定义
  keys = {
    -- ================= Find (查找) =================
    { "<leader>ff", desc = "📄 Find File (查找文件)" },
    { "<leader>fg", desc = "📄 Git Files (Git 文件)" },
    { "<leader>fr", desc = "🕒 Recent (最近访问)" },
    { "<leader>fF", desc = "📂 Cwd Files (当前目录)" },
    { "<leader>fc", desc = "📄 Config (配置文件)" },
    { "<leader>fp", desc = "📂 Projects (项目列表)" },
    { "<leader>,",  desc = "📋 Buffers (缓冲区列表)" },
    { "<leader>/",  desc = "🔍 Grep (Root) (全局搜索)" },
    { "<leader>:",  desc = "📜 Commands (命令历史)" },

    -- ================= Search (搜索) =================
    { "<leader>sg", desc = "🔍 Grep (全局搜索)" },
    { "<leader>sw", desc = "🔍 Word (当前词)" },
    { "<leader>sW", desc = "🔍 Visual (选区词)" },
    { "<leader>sh", desc = "📖 Help (帮助文档)" },
    { "<leader>si", desc = "🔤 Icons (图标)" },
    { "<leader>sd", desc = "❌ Diagnostics (诊断)" },

    -- ================= Buffers (缓冲区) =================
    { "<leader>bd", desc = "❌ Delete (关闭)" },
    { "<leader>bn", desc = "➡️ Next (下一个)" },
    { "<leader>bp", desc = "⬅️ Prev (上一个)" },
    { "<leader>bl", desc = "⬅️ Left (关闭左侧)" },
    { "<leader>br", desc = "➡️ Right (关闭右侧)" },

    -- ================= Git (版本控制) =================
    { "<leader>gs", desc = "📋 Status (状态)" },
    { "<leader>gd", desc = "📊 Diff (差异)" },
    { "<leader>gb", desc = "📦 Blame (追溯)" },
    { "<leader>gc", desc = "📜 Commits (提交)" },
    { "<leader>gi", desc = "📥 Issues (问题)" },
    { "<leader>gp", desc = "🔀 Pull Requests (拉取请求)" },

    -- ================= Code / LSP (代码) =================
    { "<leader>cc", desc = "💡 Actions (代码操作)" },
    { "<leader>cf", desc = "✨ Format (格式化)" },
    { "<leader>cr", desc = "✏️ Rename (重命名)" },
    { "<leader>cs", desc = "📝 Symbols (符号)" },

    -- ================= UI (界面) =================
    { "<leader>ul", desc = "🔆 Line (行号)" },
    { "<leader>uw", desc = "🌊 Wrap (换行)" },
    { "<leader>ui", desc = "🔹 Indent (缩进线)" },

    -- ================= Windows (窗口) =================
    { "<leader>wd", desc = "❌ Delete (关闭)" },
    { "<leader>wm", desc = "🔲 Maximize (最大化)" },
    { "<leader>wv", desc = "⬇️ Split Vert (垂直分割)" },
    { "<leader>ws", desc = "➡️ Split Horz (水平分割)" },
  },
  
  -- 组节点（分类标题）必须在 config 中通过 which-key API 注册
  config = function(_, opts)
    -- 确保 opts 存在并初始化插件
    require("which-key").setup(opts or {})
    
    -- 注册分组名称
    require("which-key").add({
      { "<leader>b", group = "📂 Buffers (缓冲区)" },
      { "<leader>c", group = "💻 Code (代码操作)" },
      { "<leader>d", group = "🐞 Debug (调试)" },
      { "<leader>f", group = "🔍 Find (查找)" },
      { "<leader>g", group = "🔀 Git (版本控制)" },
      { "<leader>l", group = "🔎 LSP (语言服务)" },
      { "<leader>n", group = "🔔 Notify (通知)" },
      { "<leader>p", group = "📦 Project (项目)" },
      { "<leader>q", group = "🚪 Quit (退出)" },
      { "<leader>s", group = "🔍 Search (搜索)" },
      { "<leader>t", group = "💻 Terminal (终端)" },
      { "<leader>u", group = "🎨 UI (界面设置)" },
      { "<leader>w", group = "🪟 Windows (窗口)" },
      { "<leader>x", group = "❌ Diag (诊断)" },
    })
  end,
}