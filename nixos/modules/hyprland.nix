{ config, pkgs, ... }:

{
  programs.hyprland.enable = true; 
  programs.hyprland.portalPackage = pkgs.xdg-desktop-portal-hyprland;

  environment.systemPackages = with pkgs; [
    hyprpaper
    kitty
    libnotify
    nwg-displays
    qt5.qtwayland
    qt6.qtwayland
    hypridle
    hyprlock
    wlogout
    wl-clipboard
    rofi
    waybar
  ];
}
