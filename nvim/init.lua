if vim.env.VSCODE then
  vim.g.vscode = true
end

if vim.loader then
  vim.loader.enable()
end

_G.dd = function(...)
  require("util.debug").dump(...)
end
_G.bt = function(...)
  require("util.debug").bt(...)
end
vim.print = _G.dd

-- require("util.profiler").startup()

pcall(require, "config.env")

require("config.lazy")({
  -- debug = false,
  profiling = {
    loader = false,
    require = true,
  },
})
