Works on NeoVim 0.12.2

Don't forget to install OPTIONAL(but very recomended) dependencies from neovim-requirements.txt.

If after downloading plugins appears error Rust fuzzy not found, run:

cd ~/.local/share/nvim/lazy/blink.cmp
cargo build --release

If you want a theme you can: 

mv ~/.config/nvim/black-metal-theme.lua ~/.config/nivm/lua/plugins

Keymaps setting in path/to/nvim/lua/config/keymaps.lua(most of all keymaps is default).
Don't forget to create "undodir"(read comments in keymaps.lua to understand) if it not in ~/.config/nvim.
