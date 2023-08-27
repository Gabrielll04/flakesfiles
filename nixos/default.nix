{ config, pkgs, ...}:

{
  imports = [
      ../modules
      ./hardware-configuration.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "nixos";

  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "pt_BR.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
    LC_ALL = "pt_BR.UTF-8";
  };

  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
  };

  fonts.packages = with pkgs; [
    meslo-lgs-nf
    noto-fonts
    noto-fonts-extra
    noto-fonts-cjk-sans
  ];

  services.xserver = {
    layout = "br";
    xkbVariant = "nodeadkeys";
  };

  console.keyMap = "br-abnt2";

  services.printing.enable = true;

  sound.enable = true;
  hardware.pulseaudio = {
    enable = true;
    package = pkgs.pulseaudioFull;
  };
  security.rtkit.enable = true;
  services.pipewire = {
    enable = false;
    alsa.enable = false;
    alsa.support32Bit = false;
    pulse.enable = false;
  };

  users.users.guimaraes = {
    isNormalUser = true;
    description = "Guimaraes";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowInsecure = true;

  environment.systemPackages = with pkgs; [
     wget
     curl
     gnumake
     cmake
     qt6.qmake
     alacritty
     gcc
     zip
     rar
     unzip
     clang
   ];

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  system.stateVersion = "22.11";

}
