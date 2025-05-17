{pkgs, ...}:
pkgs.vscode-with-extensions.override {
  vscode = pkgs.vscodium;
  vscodeExtensions = [
    pkgs.open-vsx-release.fill-labs.dependi
    pkgs.open-vsx-release.mkhl.direnv
    pkgs.open-vsx-release.vadimcn.vscode-lldb
  ];
}
