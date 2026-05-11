local wezterm = require('wezterm')
local gpu_adapters = require('utils.gpu-adapter')
local backdrops = require('utils.backdrops')
local colors = require('colors.custom')

return {
   -- ============================================
   -- FRONTEND & RENDERING
   -- ============================================
   max_fps = 60,
   front_end = 'OpenGL', ---@type 'WebGpu' | 'OpenGL' | 'Software'
   webgpu_power_preference = 'HighPerformance',
   webgpu_preferred_adapter = gpu_adapters:pick_best(),
   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu'),
   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Gl', 'Other'),

   -- ============================================
   -- THEME & COLORS (Omarchy integration)
   -- ============================================
   color_scheme = 'Tokyo Night',
   colors = colors,

   -- ============================================
   -- FONT (matching Ghostty) - OPTIMIZED
   -- ============================================
   -- Font settings moved to config/fonts.lua to avoid duplicates

   -- ============================================
   -- CURSOR
   -- ============================================
   animation_fps = 60,
   cursor_blink_ease_in = 'EaseOut',
   cursor_blink_ease_out = 'EaseOut',
   default_cursor_style = 'BlinkingBlock',
   cursor_blink_rate = 1450,

   -- ============================================
   -- WINDOW (matching Ghostty window settings)
   -- ============================================
   window_padding = {
      left = 14,
      right = 14,
      top = 14,
      bottom = 14,
   },
   window_decorations = 'NONE', -- No title bar, matches Ghostty on Hyprland
   enable_wayland = true,
   adjust_window_size_when_changing_font_size = false,
   window_close_confirmation = 'NeverPrompt',
   window_frame = {
      active_titlebar_bg = '#090909',
      -- font = fonts.font,
      -- font_size = fonts.font_size,
   },

   -- ============================================
   -- BACKGROUND & BACKDROPS
   -- ============================================
   -- background: pass in `true` if you want wezterm to start with focus mode on (no bg images)
   background = backdrops:initial_options(false),

   -- ============================================
   -- TAB BAR (Omarchy-inspired modern style)
   -- ============================================
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = false,
   use_fancy_tab_bar = false, -- Cleaner look, matches minimal aesthetic
   tab_max_width = 25,
   show_tab_index_in_tab_bar = false,
   switch_to_last_active_tab_when_closing_tab = true,

   
   -- ============================================
   -- SCROLLBAR & SCROLLBACK
   -- ============================================
   enable_scroll_bar = true,
   -- scrollback_lines moved to config/general.lua to avoid duplicates

   -- ============================================
   -- COMMAND PALETTE
   -- ============================================
   command_palette_fg_color = '#b4befe',
   command_palette_bg_color = '#11111b',
   command_palette_font_size = 12,
   command_palette_rows = 25,

   -- ============================================
   -- VISUAL EFFECTS
   -- ============================================
   underline_thickness = '1.5pt',
   hide_mouse_cursor_when_typing = false,
   inactive_pane_hsb = {
      saturation = 1,
      brightness = 1,
   },
   visual_bell = {
      fade_in_function = 'EaseIn',
      fade_in_duration_ms = 250,
      fade_out_function = 'EaseOut',
      fade_out_duration_ms = 250,
      target = 'CursorColor',
   },

   -- ============================================
   -- PERFORMANCE & RENDERING
   -- ============================================
   -- Reduce rendering overhead
   -- config.animation_mode = 'Disabled'
}

