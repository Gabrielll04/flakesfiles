{ pkgs, ... }:

pkgs.stdenv.mkDerivation {
	pname = "minegrub-theme";
	version = "1.2.0";
	src = pkgs.fetchFromGitHub {
		owner = "Lxtharia";
		repo = "minegrub-theme";
		rev = "v1.2.0";
		hash = "sha256-nXHojb4rtE+USrKO6Lglh21ZRCfcNFS4jXfyZF+LF3o=";
    	};
    	installPhase = "cp -r minegrub $out";
}
