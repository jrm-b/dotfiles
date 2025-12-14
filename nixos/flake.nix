{
  description = "Not a corn, nil a snow, but flake's";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";
    home-manager =
      { url = "github:nix-community/home-manager/release-25.11";
        inputs.nixpkgs.follows = "nixpkgs";
      };
  };

  outputs = { self, nixpkgs, home-manager, ... }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
  in {
    nixosConfigurations."matebook" = nixpkgs.lib.nixosSystem
      { inherit system;
	inherit pkgs;
        specialArgs = {};
        modules = [
          ./configuration.nix
          ./modules/fonts.nix
          ./modules/hyprland.nix
        ];
    };
  };
}
