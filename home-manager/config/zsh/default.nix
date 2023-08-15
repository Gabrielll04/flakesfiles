{ pkgs, ... }:
let
  p10kTheme = ./p10k.zsh;
in
{
  programs.zsh = {
    enable = true;
    initExtra = ''
      [[ ! -f ${p10kTheme} ]] || source ${p10kTheme}
    '';
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      {
        name = "powerlevel10k-config";
        src = ./p10k-config;
        file = "p10k.zsh";
      }
    ];
  };
}
