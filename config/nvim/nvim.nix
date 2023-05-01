pkgs:
{
  enable = true;
  vimAlias = true;
  extraConfig = ''
    luafile $HOME/.config/home-manager/config/nvim/lua/settings.lua
  '';

  plugins = with pkgs.vimPlugins; [

  ];
}
  
