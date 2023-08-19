{ config, pkgs, ... }:

{

  imports = [
    ./config/git
    ./config/nvim
    ./config/vscode
    ./config/zsh
    ./i3
  ];

  home.username = "guimaraes";
  home.homeDirectory = "/home/guimaraes";
 
  home.stateVersion = "22.11";

  home.packages = with pkgs; [
    material-icons
    nitrogen
    picom
    firefox
  ];

  home.file = {
  };

  home.sessionVariables = {
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  programs.home-manager.enable = true;
}
