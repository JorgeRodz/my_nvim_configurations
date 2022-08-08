
local status_ok, tagalong = pcall(require, "tagalong")
if not status_ok then
  return
end

tagalong.setup {
  -- Default setup
}
