local status_ok, presence = pcall(require, "presence")
if not status_ok then
    return
end

presence:setup({
  -- General options
  auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
  neovim_image_text   = "Electron apps suck ass", -- Text displayed when hovered over the Neovim image
  main_image          = "neovim",                   -- Main image display (either "neovim" or "file")
  log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
  debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
  enable_line_number  = true,                      -- Displays the current line number instead of the current project
  blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
  buttons             = false,                       -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
  file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
  show_time           = true,                       -- Show the timer
})