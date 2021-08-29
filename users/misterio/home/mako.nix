{ pkgs, config, ... }:
let colors = config.colorscheme.colors;
in {
  programs.mako = {
    enable = true;
    iconPath = if config.colorscheme.kind ==  "dark" then
      "${config.gtk.iconTheme.package}/share/icons/Papirus-Dark"
    else
      "${config.gtk.iconTheme.package}/share/icons/Papirus-Light";
    font = "Fira Sans 12";
    padding = "10,20";
    anchor = "top-center";
    width = 400;
    height = 150;
    borderSize = 3;
    defaultTimeout = 8000;
    backgroundColor = "#${colors.base00}dd";
    borderColor = "#${colors.base03}dd";
    textColor = "#${colors.base05}dd";
  };
}
