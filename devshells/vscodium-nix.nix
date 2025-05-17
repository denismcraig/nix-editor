{
  perSystem,
  pkgs,
  ...
}:
pkgs.mkShell {
  packages = [perSystem.self.vscodium-nix];
}
