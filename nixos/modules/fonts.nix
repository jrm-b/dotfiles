{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      font-awesome
      maple-mono.NF
      nerds-fonts.fira-code
      nerds-fonts.im-writing
      nerds-fonts.jetbrains-mono
      nerds-fonts.meslo-lg
      powerline-fonts
      roboto
      roboto-mono
    ];
  };
};
