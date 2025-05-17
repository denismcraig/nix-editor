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

    vscode = {
      enable = lib.mkEnableOption "vscode";
      package = lib.mkPackageOption pkgs "vscode" {default = pkgs.vscodium;};
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
    (lib.mkIf (cfg.enable && cfg.vscode.enable) {
      home.packages = [cfg.vscode.package];
    })
  ];
}
