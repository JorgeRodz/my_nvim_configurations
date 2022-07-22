vim.g.monokaipro_filter = "spectrum"

local colorscheme = "monokaipro"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
