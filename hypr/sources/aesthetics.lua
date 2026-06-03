hl.config({
	general = {
		gaps_in = 6,
		gaps_out = 12,
		border_size = 1,

		layout = "dwindle",

		allow_tearing = true,

		col = {
			active_border = "rgba(e78a4eff)",
			inactive_border = "rgba(3c333bff)",
		},
	},

	dwindle = {
		preserve_split = true,
	},

	animations = {
		enabled = false,
	},

	decoration = {
		dim_inactive = true,
		dim_strength = 0.2,
	},

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		disable_scale_notification = true,
		focus_on_activate = true,
		anr_missed_pings = 3,
		on_focus_under_fullscreen = 1,
	},
})
