{ config, pkgs, ... }:

{
  imports = [
    modules/tmux
    modules/nvim
    modules/fonts
  ];

  home.username = "francois";
  home.homeDirectory = "/home/francois";
  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
