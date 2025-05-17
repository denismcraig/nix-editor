{pkgs, ...}:
pkgs.vscode-with-extensions.override {
  vscode = pkgs.vscodium;
  vscodeExtensions = [
    pkgs.open-vsx.biomejs.biome
    pkgs.open-vsx.fill-labs.dependi
    pkgs.open-vsx.github.vscode-github-actions
    pkgs.open-vsx.jnoortheen.nix-ide
    pkgs.open-vsx.mkhl.direnv
    pkgs.open-vsx.tamasfe.even-better-toml
    pkgs.open-vsx.vitest.explorer
  ];
}
