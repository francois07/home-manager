{ config, pkgs, ... }:
{
  home.packages = [
    pkgs.go
    pkgs.gopls
    pkgs.crystal
    pkgs.crystalline
  ];
}
