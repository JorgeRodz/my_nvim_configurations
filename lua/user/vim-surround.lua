local status_ok, vim_surround = pcall(require, "vim-surround")
if not status_ok then
  return
end

vim_surround.setup {
  -- Default setup
}
