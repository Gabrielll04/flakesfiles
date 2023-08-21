return {
	"kyazdani42/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "tt", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree" },
	},
	config = function()
		require("nvim-tree").setup { }
	end,
}
