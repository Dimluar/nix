{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.timeout = null;
  boot.loader.efi.canTouchEfiVariables = true;

  # Activate SysRq
  boot.kernel.sysctl."kernel.sysrq" = 502;

  # Enable display manager
  services.displayManager.sddm.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  # Falback desktop manager
  services.desktopManager.plasma6.enable = true;
}
