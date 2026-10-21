hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 3,

		layout = "dwindle",

		allow_tearing = true,

		col = {
			active_border = "rgba(c48282dd)",
			inactive_border = "rgba(606079bb)",
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
		active_opacity = 0.94,
        inactive_opacity = 0.9,
        blur = {
            passes = 2,
            noise = 0.2,
        },
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
