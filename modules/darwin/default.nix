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
      environment.systemPackages = with pkgs; [helix];
    })
    (lib.mkIf (cfg.enable && cfg.vscode.enable) {
      environment.systemPackages = [cfg.vscode.package];
    })
  ];
}
