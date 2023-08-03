pkgs: 
{
  programs.git = {
    enable = true;
    userName = "Gabrielll04";
    userEmail = "gabrielggcarneiro04@gmail.com";

    aliases = {};
    extraConfig = {
      init = {defaultBranch = "main";};
        delta = {
            options.map-styles = "bold purple => syntax #ca9ee6, bold cyan => syntax #8caaee";
            line-numbers = true;
        };
	rerere = {
	    autoUpdate = true;
	    enabled = true;
	};
    };
    delta.enable = true;
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
  };
}
