-- lua/plugins/web.lua

return {
  "microsoft/vscode-chrome-debug",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function()
    local dap = require("dap")

    dap.adapters.chrome = {
      type = "executable",
      command = "node",
      args = { os.getenv("HOME") .. "/path/to/vscode-chrome-debug/out/src/chromeDebug.js" }, -- 调整此路径
    }

    dap.configurations.javascript = {
      {
        type = "chrome",
        request = "launch",
        name = "Launch Chrome",
        url = "http://localhost:18080",
        webRoot = "${workspaceFolder}",
      },
    }

    dap.configurations.vue = {
      {
        type = "chrome",
        request = "launch",
        name = "Launch Vue App",
        url = "http://localhost:18080",
        webRoot = "${workspaceFolder}",
      },
    }
  end,
}
