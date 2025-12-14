{config, pkgs, ... }:

{
  imports =
    [ ./hardware-configuration.nix ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 3;
  boot.plymouth.enable = false;

  time.timeZone = "Europe/Paris";
  networking.hostName = "matebook";
  networking.networkmanager.enable = true;

  console.keyMap = "fr";
  i18n.defaultLocale = "fr_FR.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "fr_FR.UTF-8";
    LC_IDENTIFICATION = "fr_FR.UTF-8";
    LC_MEASUREMENT = "fr_FR.UTF-8";
    LC_MONETARY = "fr_FR.UTF-8";
    LC_NAME = "fr_FR.UTF-8";
    LC_NUMERIC = "fr_FR.UTF-8";
    LC_PAPER = "fr_FR.UTF-8";
    LC_TELEPHONE = "fr_FR.UTF-8";
    LC_TIME = "fr_FR.UTF-8";
  };

  programs.bash.enable = true;
  users.defaultUserShell = pkgs.bash;

  users.users.jeremy = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "kvm" "input" ];
    packages = with pkgs; [
      eza
      git
      starship
      vim
    ];
  };

  services = {
    pipewire.enable = true;
    pipewire.alsa.enable = true;
    pipewire.alsa.support32Bit = true;
    pipewire.pulse.enable = true;
    pipewire.wireplumber.enable = true;

    fstrim.enable = true;
    fstrim.interval = "weekly";

    libinput.enable = true;
    libinput.touchpad.tapping = true;

    blueman.enable = true;
    upower.enable = true;
  };

  powerManagement.enable = true;
  powerManagement.cpuFreqGovernor = "schedutil";

  zramSwap = {
    enable = true;
    priority = 100;
    memoryPercent = 30;
    swapDevices = 1;
    algorithm = "zstd";
  };

  nix.settings = {
    auto-optimise-store = true;
    experimental-features = [ "nix-command" "flakes" ];
  };
  
  virtualisation.libvirtd.enable = true;
  virtualisation.docker.enable = true;
  virtualisation.docker.rootless.enable = true;

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  system.stateVersion = "25.11";
}
