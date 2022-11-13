wk = require("which-key")


wk.register({
	f = {
		name="Files"
	},
	g = {
		name="Git"
	},
	c = {
		name="LSP"
	},
	h = {
		name="Harpoon"
	},
    w = { "<C-w>", "Window" },

}, {prefix="<leader>"})
