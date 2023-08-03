{ config, pkgs, ... }: 
{
  environment.variables = {
    EDITOR = "nvim";
    QT_QPA_PLATFORMTHEME = "qt5ct";
    QT_QPA_PLATFORM = "xcb";
    NIX_CONFIGURATION = "/etc/nixos";
    PICOM_CONFIGURATION = "~/.config/picom";
    I3_CONFIGURATION = "~/.config/i3";
  };
}
