{pkgs, config, ...}:
{
  programs.firefox = {
    enable = true;

    profiles = {
      "gabriel" = {
        id = 0;
        name = "gabriel";
        isDefault = true;
        extensions = with config.nur.repos.rycee.firefox-addons; [
          return-youtube-dislikes
          enhancer-for-youtube
          darkreader
          skip-redirect
          don-t-fuck-with-paste
          ninja-cookie
        ];
      };
    };
  };
}
