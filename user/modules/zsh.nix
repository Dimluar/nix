{config, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = let
      flakePath = " ~/.config/nix";
    in {
      rb = "sudo nixos-rebuild switch --flake ${flakePath}";
      upd = "sudo nix flake update --flake ${flakePath}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakePath}";

      hms = "home-manager switch --flake ${flakePath}";

      conf = "code ~/.config/nix";

      v = "nvim";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = ["git" "sudo"];
      theme = "lambda";
    };
  };
}
