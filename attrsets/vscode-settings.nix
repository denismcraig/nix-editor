{
  chat.commandCenter.enabled = true;
  direnv.restart.automatic = true;
  editor = {
    fontFamily = "CommitMono Nerd Font, Consolas, 'Courier New', monospace";
    fontLigatures = true;
    fontSize = 12;
    formatOnPaste = true;
    formatOnSave = true;
    hover.delay = null;
    minimap.renderCharacters = false;
    rulers = [100 120];
    semanticTokenColorCustomizations = {
      enabled = true;
      rules."*.mutable" = {
        bold = true;
        underline = false;
      };
    };
    tabSize = 2;
  };
  files = {
    eol = "\n";
    trimFinalNewlines = true;
    trimTrailingWhitespace = true;
  };
  scm.autoReveal = false;
  window = {
    menuBarVisibility = "classic";
    title = "\${appName}";
  };
  workbench = {
    activityBar.location = "bottom";
    colorTheme = "GitHub Dark Default";
    hover.delay = null;
    list.smoothScrolling = true;
    preferredDarkColorTheme = "Github Dark Default";
    preferredHighContrastColorTheme = "Github Dark High Contrast";
    preferredHighContrastLightColorTheme = "Github Light High Contrast";
    preferredLightColorTheme = "Github Light Default";
  };
}
