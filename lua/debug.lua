-- DAP
local dap = require 'dap'

-- Change the symbol for breakpoints
vim.fn.sign_define('DapBreakpoint', { text = '󰯯 ', texthl = '', linehl = '', numhl = '' })

-- DAP virtual text
require('nvim-dap-virtual-text').setup()

-- Python
require('dap-python').setup '/Users/conorsheehan/.local/share/uv/tools/debugpy/bin/python'
require('dap-python').test_runner = 'pytest'

-- DAP UI
require('dapui').setup {
  layouts = {
    {
      elements = {
        {
          id = 'breakpoints',
          size = 0.10,
        },
        {
          id = 'scopes',
          size = 0.40,
        },
        {
          id = 'stacks',
          size = 0.40,
        },
      },
      position = 'left',
      size = 40,
    },
    {
      elements = {
        {
          id = 'repl',
          size = 1.0,
        },
      },
      position = 'bottom',
      size = 8,
    },
  },
}
