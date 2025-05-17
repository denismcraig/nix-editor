{
  config,
  lib,
  pkgs,
  ...
}: let
  cfg = config.editor;
in {
  options.editor = {
    enable = lib.mkEnableOption "editor";

    helix = {
      enable = lib.mkEnableOption "helix";
    };

    vscodium = {
      enable = lib.mkEnableOption "vscodium";
    };
  };

  config = lib.mkMerge [
    (lib.mkIf (cfg.enable && cfg.helix.enable) {
      home.packages = with pkgs; [helix];
      programs.helix = {
        enable = true;
        defaultEditor = true;
      };
    })
    (lib.mkIf (cfg.enable && cfg.vscodium.enable) {
      home.packages = with pkgs; [vscodium];
    })
  ];
}
