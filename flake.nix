{
  description = "System configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    ...
  }: let
    system = "x86_64-linux";
  in {
    nixosConfigurations.oblivion = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [./system/configuration.nix];
    };

    homeConfigurations.dimu = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [./user/home.nix];
    };
  };
}
