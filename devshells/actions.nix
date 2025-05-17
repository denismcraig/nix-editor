{pkgs, ...}:
pkgs.mkShell {
  packages = with pkgs; [j2cli];
}
