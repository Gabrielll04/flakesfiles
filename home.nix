{ config, pkgs, ... }:

let 
    customNeovim = import ./config/nvim/nvim.nix; 
    customGit = import ./config/git/git.nix;
in
{
    home.username = "guimaraes";
    home.homeDirectory = "/home/guimaraes";
 
    home.stateVersion = "22.11";

    home.packages = with pkgs; [
	gnupg
    ];

    home.file = {
    };

    home.sessionVariables = {
        # EDITOR = "emacs";
    };

    programs.home-manager.enable = true;

    programs.neovim = customNeovim pkgs;
    programs.git = customGit pkgs;
}
