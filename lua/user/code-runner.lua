local status_ok, code_runner = pcall(require, "code_runner")
if not status_ok then
  return
end

code_runner.setup {
  -- Default setup
  mode = "toggleterm",
  focus = true,
  filetype = {
    ruby = "ruby"
  }
}
