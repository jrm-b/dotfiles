{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      font-awesome
      maple-mono.NF
      nerd-fonts.fira-code
      nerd-fonts.im-writing
      nerd-fonts.jetbrains-mono
      nerd-fonts.meslo-lg
      powerline-fonts
      roboto
      roboto-mono
    ];
  };
}
