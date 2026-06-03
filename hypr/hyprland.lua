require("sources.monitor")
require("sources.env")
require("sources.startup")
require("sources.binds")
require("sources.aesthetics")
require("sources.windowrules")

hl.config({
	input = {
		kb_layout = "us, ir",
		kb_options = "grp:alts_toggle, caps:escape_shifted_capslock",
		numlock_by_default = true,

		touchpad = {
			natural_scroll = true,
		},
	},

	group = {
		auto_group = false,
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})
