{pkgs, ...}:
pkgs.vscode-with-extensions.override {
  vscode = pkgs.vscodium;
  vscodeExtensions = [
    pkgs.open-vsx.fill-labs.dependi
    pkgs.open-vsx.github.vscode-github-actions
    pkgs.open-vsx.golang.go
    pkgs.open-vsx.jnoortheen.nix-ide
    pkgs.open-vsx.mkhl.direnv
    pkgs.open-vsx.vadimcn.vscode-lldb
  ];
}
