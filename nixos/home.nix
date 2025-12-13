{ config, pkgs, ... }:

{
  home.username = "jeremy";
  home.homeDirectory = "/home/jeremy";

  home.file = {
    ".bashrc" = ../bashrc;
    ".profile" = ../profile;
    ".inputrc" = ../inputrc;

    ".config/starship.toml" = ../starship.toml;

    ".config/hypr/hyprland.conf" = ../hypr/hyprland.conf;
    ".config/hypr/hyprpaper.conf" = ../hypr/hypraper.conf;
    ".config/hypr/moy.conf" = ../hypr/monitors.conf;
    ".config/hypr/workspaces.conf" = ../hypr/workspaces.conf;

    ".config/kitty/kitty.conf" = ../kitty/kitty.conf;
    ".config/kitty/current-theme.conf" = ../kitty/current-theme.conf;

    ".config/nvim/init.lua" = ../nvim/init.lua;
    ".config/nvim/lua/config/lazy.lua" = ../nvim/lua/config/lazy.lua;
    ".config/nvim/lua/plugins/colorscheme.lua" = ../nvim/lua/plugins/colorscheme.lua;
    ".config/nvim/lua/plugins/lsp.lua" = ../nvim/lua/plugins/lsp.lua;
    ".config/nvim/lua/plugins/telescope.lua" = ../nvim/lua/plugins/telescope.lua;
    ".config/nvim/lua/plugins/treesitter.lua" = ../nvim/lua/plugins/treesitter.lua;
  };

  home.stateVersion = "25.11";
}
