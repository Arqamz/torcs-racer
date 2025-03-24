{
  description = "Dev shell for Torcs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ...}: let
    pkgs = nixpkgs.legacyPackages."x86_64-linux";
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
		
	  packages = with pkgs; [
	    cmake
	    libgcc
	    llvmPackages_19.libcxx
	    libpkgconf
	    libglvnd.dev
	    libGL
	    libusb1
	    freeglut
 	    glfw
	    glm
	    mesa
	    mesa-gl-headers
	    libGLU
	    libglut
	    xorg.libX11
	    plib
	    openal
	    freealut
	    xorg.libXrandr
	    xorg.libXmu
	    xorg.xorgproto
	    xorg.libXext
	    xorg.libSM
	    xorg.libICE
	    xorg.libXi
	    xorg.libXt
	    xorg.libXrender
	    xorg.libXxf86vm
	    libpng
	    zlib
	    libvorbis

		python2
	  ];
	  shellHook = ''
	    echo "Development environment for torcs server/client is ready!"
	  '';
    };
  };
}
