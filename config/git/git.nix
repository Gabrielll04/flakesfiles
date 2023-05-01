pkgs: 
{
    enable = true;
    userName = "Gabrielll04";
    userEmail = "gabrielggcarneiro04@gmail.com";
    signing = {
        key = "056CFD15A9F99B0E";
        signByDefault = true;
    };

    aliases = {};
    extraConfig = {
      init = {defaultBranch = "main";};
        delta = {
            options.map-styles = "bold purple => syntax #ca9ee6, bold cyan => syntax #8caaee";
            line-numbers = true;
        };
    };

    ignores = [
      ".cache/"
      ".DS_Store"
      ".idea/"
      "*.swp"
      "*.elc"
      "auto-save-list"
      ".direnv/"
      "node_modules"
      "result"
      "result-*"
    ];
}
