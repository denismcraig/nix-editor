{pkgs, ...}:
pkgs.vscode-with-extensions.override {
  vscode = pkgs.vscodium;
  vscodeExtensions = [pkgs.open-vsx.mkhl.direnv];
}
