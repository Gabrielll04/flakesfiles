{ pkgs, ...}:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    extraConfig = ''
      luafile $HOME/.config/home-manager/config/nvim/lua/treesitter.lua
      luafile $HOME/.config/home-manager/config/nvim/lua/settings.lua
  
      lua << EOF
      vim.defer_fn(function()
        vim.cmd [[
          luafile $HOME/.config/home-manager/config/nvim/lua/lsp.lua
        ]]
      end, 70)
      EOF
    '';

    plugins = with pkgs.vimPlugins; [
        
      #File tree
      nvim-web-devicons
      nvim-tree-lua
        
      #Eyecandy
      nvim-treesitter
      
      #LSP
      nvim-lspconfig
      nvim-compe

      vim-nix
      indentLine
    ]; 
  };
}
