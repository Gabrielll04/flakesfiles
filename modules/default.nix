{ config, pkgs, ... }:

{
	imports = [
		./i3.nix
		./grub.nix
	];
}
