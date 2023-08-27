{ config, pkgs, ... }:

let 
	minegrub-theme = import ../pkgs/minegrub-theme;

in {
	boot.loader.grub.enable = true;
  	boot.loader.grub.device = "/dev/sda";
  	boot.loader.grub.useOSProber = true;
	boot.loader.grub.theme = minegrub-theme pkgs;
}
