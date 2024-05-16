-- lua/plugins/nvim-dap.lua
return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      -- Python configuration
      dap.adapters.python = {
        type = "executable",
        command = "python3",
        args = { "-m", "debugpy.adapter" },
      }
      dap.configurations.python = {
        {
          type = "python",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          pythonPath = function()
            return "/usr/bin/python3"
          end,
        },
      }

      -- Java configuration
      dap.adapters.java = function(callback, config)
        callback({
          type = "server",
          host = config.host or "127.0.0.1",
          port = config.port or 5005,
        })
      end
      dap.configurations.java = {
        {
          type = "java",
          request = "attach",
          name = "Debug (Attach) - Remote",
          hostName = "127.0.0.1",
          port = 5005,
        },
      }

      -- Vue and HTML can be debugged using Chrome DevTools Protocol via vscode-chrome-debug
      dap.adapters.chrome = {
        type = "executable",
        command = "node",
        args = { os.getenv("HOME") .. "/path/to/vscode-chrome-debug/out/src/chromeDebug.js" }, -- Adjust this path
      }
      dap.configurations.javascript = { -- Change to vue if you want to target Vue specific files
        {
          type = "chrome",
          request = "launch",
          name = "Launch Chrome",
          url = "http://localhost:8080",
          webRoot = "${workspaceFolder}",
        },
      }
      dap.configurations.typescript = dap.configurations.javascript
    end,
  },
  { "mfussenegger/nvim-dap-python" },
}
