local map = vim.keymap.set
local telescope = require("telescope.builtin")

--TELESCOPE KEYMAPS

map("n", "<leader>tlg", telescope.live_grep, { desc = "Telescope Live Grep" })
map("n", "<leader>tr", telescope.registers, { desc = "Telescope Registers" })
map("n", "<leader>tb", telescope.buffers, { desc = "Telescope Buffers" })
map("n", "<leader>tht", telescope.help_tags, { desc = "Telescope Help Tags" })
map("n", "<leader>tfa", telescope.current_buffer_fuzzy_find, { desc = "Telescope Fuzzy Find In Current Buffer" })
map("n", "<leader>tac", telescope.commands, { desc = "Telescope Commands" })
map("n", "<leader>tgc", telescope.git_commits, { desc = "Telescope Git Commits" })
map("n", "<leader>tgB", telescope.git_bcommits, { desc = "Telescope Git Bcommits" })
map("n", "<leader>tgb", telescope.git_branches, { desc = "Telescope Git Branches" })
map("n", "<leader>tgs", telescope.git_status, { desc = "Telescope Git Status" })
map("n", "<leader>tgh", telescope.git_stash, { desc = "Telescope Git Stash" })
map("n", "<leader>tts", telescope.treesitter, { desc = "Telescope Tree Sitter" })
map("n", "<leader>tak", telescope.keymaps, { desc = "Telescope Available Keymaps" })
map("n", "<leader>tdl", "<cmd>w | Telescope diagnostics<cr>", { desc = "Telescope Diagnostics List" })
map("n", "<leader>tff", telescope.find_files, { desc = "Telescope find files" })
map("n", "<leader>tof", telescope.oldfiles, { desc = "Telescope Old Files" })
map("n", "<leader>tgs", telescope.grep_string, { desc = "Telescope Grep String" })
map("n", "<leader>tch", telescope.command_history, { desc = "Telescope Command History" })
map("n", "<leader>tsh", telescope.search_history, { desc = "Telescope Search History" })

map("n", "<leader>n", "<cmd>Oil<cr>", { desc = "Oil File Explorer" })

--IF WANT NEOTREE
-- map("n", "<leader>n", "<cmd>Neotree toggle<cr>", { desc = "NeoTree Toggle" })
