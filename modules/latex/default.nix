{ config, pkgs, ... }:
{
  home.packages = [
    pkgs.texliveFull
    pkgs.pandoc
  ];
}
