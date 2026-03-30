{pkgs, ...}: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dimu = {
    isNormalUser = true;
    description = "Dimluar";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.zsh;
  };
}
