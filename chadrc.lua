---@type ChadrcConfig

require('custom.settings')


local M = {}

M.ui = {
  theme = 'rosepine',
  nvdash = {
    load_on_startup = true
  }
}

M.plugins = 'custom.plugins'
M.mappings = require'custom.mappings'

return M
