-- lua/plugins/python.lua
return {
  "mfussenegger/nvim-dap-python",
  dependencies = { "mfussenegger/nvim-dap" },
  config = function()
    local dap_python = require('dap-python')
    dap_python.setup('/usr/bin/python3')  -- 修改为你的 Python 路径
    dap_python.test_runner = 'pytest'
  end
}
