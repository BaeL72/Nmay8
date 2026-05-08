Works on NeoVim 0.12.2

Don't forget to install OPTIONAL(but very recomended) dependencies from neovim-requirements.txt.

!!! If after downloading plugins appears error Rust fuzzy not found, run:

cd ~/.local/share/nvim/lazy/blink.cmp
cargo build --release

If you want a theme you can: 

mv ~/.config/nvim/black-metal-theme.lua ~/.config/nivm/lua/plugins

Keymaps setting in path/to/nvim/lua/config/keymaps.lua(most of all keymaps is default).

!!! Don't forget to create "undodir"(read comments in keymaps.lua to understand) if it not in ~/.config/nvim.

!!! ensure_installed doesn't working in treesitter(idk why), and that means that you should run in neovim:

:TSInstall python typescript javascript tsx jsx css html yaml xml json

!!! Some lsp's and formaters also doesn't support ensure_installed:

:MasonInstall black json-lsp prettierd 

If you need css, html, yaml and tailwind LSP's:

:MasonInstall tailwindcss-language-server css-lsp html-lsp yaml-language-server

!!! For setting up Copilot run in neovim:

:Copilot setup

!!! For neovim-tmux compitability add in your ~/.tmux.conf:

vim_pattern='(\S+/)?g?\.?(view|l?n?vim?x?|fzf)(diff)?(-wrapped)?'
is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +${vim_pattern}$'"
bind-key -n 'C-h' if-shell "$is_vim" 'send-keys C-h'  'select-pane -L'
bind-key -n 'C-j' if-shell "$is_vim" 'send-keys C-j'  'select-pane -D'
bind-key -n 'C-k' if-shell "$is_vim" 'send-keys C-k'  'select-pane -U'
bind-key -n 'C-l' if-shell "$is_vim" 'send-keys C-l'  'select-pane -R'
tmux_version='$(tmux -V | sed -En "s/^tmux ([0-9]+(.[0-9]+)?).*/\1/p")'
if-shell -b '[ "$(echo "$tmux_version < 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\'  'select-pane -l'"
if-shell -b '[ "$(echo "$tmux_version >= 3.0" | bc)" = 1 ]' \
    "bind-key -n 'C-\\' if-shell \"$is_vim\" 'send-keys C-\\\\'  'select-pane -l'"

bind-key -T copy-mode-vi 'C-h' select-pane -L
bind-key -T copy-mode-vi 'C-j' select-pane -D
bind-key -T copy-mode-vi 'C-k' select-pane -U
bind-key -T copy-mode-vi 'C-l' select-pane -R
bind-key -T copy-mode-vi 'C-\' select-pane -l
