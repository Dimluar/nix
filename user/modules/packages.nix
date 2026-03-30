{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    vscode
    texliveFull
    unzip
    librewolf
    alejandra
    nerd-fonts.caskaydia-cove
  ];
}
