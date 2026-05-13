return {
	"christoomey/vim-tmux-navigator",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateRight",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigatePrevious",
		"TmuxNavigatePrecessList",
	},
	keys = {
		{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft" },
		{ "<c-j>", "<cmd><C-U>TmuxNavigateDown" },
		{ "<c-k>", "<cmd><C-U>TmuxNavigateUp" },
		{ "<c-l>", "<cmd><C-U>TmuxNavigateRight" },
		{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious" },
	},
}
