{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./modules/bundle.nix
  ];

  home = {
    username = "dimu";
    homeDirectory = "/home/dimu";
    stateVersion = "25.11";
  };
}
