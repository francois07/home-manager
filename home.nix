{ config, pkgs, ... }:

{
  imports = [
    modules/tmux
    modules/nvim
    modules/fonts
    modules/latex
  ];

  home.username = "francois";
  home.homeDirectory = "/home/francois";
  home.stateVersion = "24.05";
  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  programs.home-manager.enable = true;
}
