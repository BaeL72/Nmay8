-- Enables/Disables built-in EditorConfig support
vim.g.editorconfig = false

-- Enables/Disables 24-bit RGB colors in the terminal
vim.opt.termguicolors = true

-- Set clipboard global clipboard(wl-copy(wayland), xlip(x11))
vim.opt.clipboard = "unnamedplus"

-- Show line numbers
vim.opt.number = true

-- New horizontal splits open below the current window instead of above
vim.opt.splitbelow = true

-- Enables/Disables swap files - no crash recovery but no swap file clutter
vim.opt.swapfile = false

-- Enables/Disables backup files created before overwriting
vim.opt.backup = false

-- Creates undodir(the directory when all undos and redos store)
local undodir = vim.fn.expand("~/.config/nvim/undodir") -- Place of undodir(change it if you want)
vim.opt.undodir = undodir

-- Persist undo history to a file - can undo changes even after closing and reopening a file
vim.opt.undofile = true

-- Maximum number of undo steps stored
vim.opt.undolevels = 20000

-- Max lines to save to undo when reloading a buffer
vim.opt.undoreload = 20000

-- Milliseconds to wait for a mapped key sequence to complete
vim.opt.timeoutlen = 300

-- Milliseconds of inactivity before writing swap file and firing CursorHold
-- lower = snappier LSP hover/diagnostics
vim.opt.updatetime = 250

-- Allows switching buffers without saving - buffers stay loaded in background
vim.opt.hidden = true

-- Enables/Disables relative line numbers
vim.opt.relativenumber = false

-- Enables/Disables cursorline
vim.opt.cursorline = true

-- Enables/Disables signcolumn :NUMBER - means width of signcolumn
vim.opt.signcolumn = "yes:1"

-- Enables/Disables line wrapping - long lines extend off screen instead of wrapping visually
vim.opt.wrap = false

-- Enables/Disables mode display in default statusline
vim.opt.showmode = false

-- Size of shift width
vim.opt.shiftwidth = 2

-- How many spaces tab do
vim.opt.tabstop = 2

-- How many spaces a tab keypress inserts/deletes in insert mode
vim.opt.softtabstop = 2

-- Enables/Disables autoindent
vim.opt.autoindent = true

-- inserts spaces instead of real tab characters when pressing TAB
vim.opt.expandtab = true

-- Automatically adds indentation when starting a new line based on code syntex
vim.opt.smartindent = true

-- When wrap is on, wrapped lines continue visually indented to match the start of the line
vim.opt.breakindent = true

-- Fix end of file(newline or with no newline in the end)
vim.opt.fixendofline = false

-- Enables/Disables redrawing the screen during macros/scripts - faster execution
-- but can cause visual glitsches with some plugins
vim.opt.lazyredraw = false

-- Max milliseconds spent on syntax highlighting per redraw - raise if large files
-- get dimmed/unstyled
vim.opt.redrawtime = 1500

-- Only syntax-highlight up to column N - prevents slowdown on very long lines
vim.opt.synmaxcol = 240

-- Enables/Disables reading vim: config embedded in files(e.g. # vim: set ft=sh:)
vim.opt.modeline = false

-- Enables/Disables auto-sourcing .nvimrc/.exrc from the current directory
vim.opt.exrc = false
