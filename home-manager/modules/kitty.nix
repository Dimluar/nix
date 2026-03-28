{pkgs, ...}: {
  programs.kitty = {
    enable = true;

    font = {
      name = "Cascadia Code";
      package = pkgs.nerd-fonts.caskaydia-cove;
      size = 12;
    };

    themeFile = "Catppuccin-Mocha";

    settings = {
      confirm_os_window_close = 0;
      enable_audio_bell = false;
    };
  };
}
