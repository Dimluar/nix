{
  # System upgrade
  system.autoUpgrade = {
    enable = true;
    flake = "~/.config/nix";
    flags = [
      "--commit-lock-file"
    ];
    dates = "weekly";
    randomizedDelaySec = "15min";
    allowReboot = false;
  };

  # Garbage collection
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 10d";
  };
  nix.settings.auto-optimise-store = true;
}
