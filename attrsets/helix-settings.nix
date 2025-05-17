{
  editor = {
    auto-save = true;
    bufferline = "always";
    cursorline = true;
    cursorcolumn = true;

    # TODO: Figure out what cursor-shape config I actually like, unfamiliar with select mode.
    cursor-shape = {
      normal = "bar";
      insert = "bar";
      select = "bar";
    };

    default-line-ending = "lf";
    end-of-line-diagnostics = "hint";
    file-picker.hidden = false;
    indent-guides = {
      render = true;
      character = "╎";
      skip-levels = 1;
    };
    inline-diagnostics = {
      cursor-line = "info";
      other-lines = "warning";
    };
    insert-final-newline = true;
    lsp.display-inlay-hints = true;
    mouse = true;
    preview-completion-insert = true;
    rulers = [100 120];
    soft-wrap.enable = true;

    # TODO: Figure out a statusline config I'm happy with
    statusline = {
      left = ["spinner" "diagnostics" "separator" "file-name" "read-only-indicator" "file-modification-indicator" "separator" "spacer" "version-control"];
      center = ["mode"];
      right = ["position" "total-line-numbers" "separator" "file-encoding" "file-line-ending"];
      separator = "|";
      mode.normal = "NORMAL";
      mode.insert = "INSERT";
      mode.select = "SELECT";
    };

    true-color = true;

    # TODO: Since I want to keep spaces rendered, re-configure theme so that they are more subtle.
    whitespace = {
      render = {
        space = "all";
        tab = "all";
        newline = "none";
      };
    };
  };

  theme = "github_dark";
}
