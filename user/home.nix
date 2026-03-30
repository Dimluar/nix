{
  config,
  pkgs,
  ...
}: {
  home = {
    username = "dimu";
    homeDirectory = "/home/dimu";
    stateVersion = "25.11";

    packages = with pkgs; [
      vscode
      texliveFull
      unzip
      librewolf
      alejandra
      nerd-fonts.caskaydia-cove
    ];
  };

  nixpkgs.config.allowUnfree = true;

  imports = [
    ./modules/bundle.nix
  ];
}
