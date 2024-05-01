local wezterm = require("wezterm")
local cfg = wezterm.config_builder()

-- Window Close Confirmation
cfg.window_close_confirmation = "NeverPrompt"

-- Avoid Config Breakage
cfg.automatically_reload_config = false

-- Disable All Noises
cfg.audible_bell = "Disabled"

-- Color Scheme
cfg.color_scheme = "Catppuccin Macchiato"

-- FPS
cfg.max_fps = 144

-- Font
cfg.font = wezterm.font({
	family = "FiraCode Nerd Font",
	weight = bold,
	harfbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "zero", "cv30", "cv01" },
})
cfg.font_size = 17
cfg.dpi = 144.0
cfg.line_height = 1.2

-- Scroll Bar
cfg.enable_scroll_bar = false

-- Cursor
cfg.default_cursor_style = "BlinkingUnderline"
cfg.cursor_blink_rate = 500

-- Window Padding
cfg.window_padding = {
	left = 25,
	right = 0,
	top = 10,
	bottom = 0,
}

-- Window Decorations
cfg.window_decorations = "TITLE | RESIZE" -- 'TITLE | RESIZE'

-- Terminal Background
-- cfg.window_background_opacity = 0.9
-- cfg.macos_window_background_blur = 20
--[[cfg.window_background_image = ""
cfg.window_background_image_hsb = {
	brightness = 1.0,
	hue = 1.0,
	saturation = 1.0,
}]]
--

-- Text Background Opacity
cfg.text_background_opacity = 1.0

-- Tab Bar
cfg.enable_tab_bar = false
cfg.hide_tab_bar_if_only_one_tab = true

-- Disable WezTerm multiplex
cfg.multiplex_pane = false

return cfg
