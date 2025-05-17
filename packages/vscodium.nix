{pkgs, ...}:
pkgs.vscode-with-extensions.override {
  vscode = pkgs.vscodium;
  vscodeExtensions = [
    pkgs.open-vsx.github.github-vscode-theme
    pkgs.open-vsx.mkhl.direnv
  ];
}
