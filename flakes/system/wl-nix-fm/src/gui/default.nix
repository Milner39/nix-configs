{
  pkgs,
  ...
} @ args:

{
  # === Login ===

  modules.gui.display-manager.sddm.enable = true;

  # === Login ===


  # === Window Manager ===

  modules.gui.window-manager.niri.enable = true;
  modules.gui.window-manager.hyprland.enable = true;
  modules.gui.window-manager.sway.enable = true;

  # === Window Manager ===


  # === Screen Locker ===

  # The window manager modules bind Mod+L to `hyprlock`
  environment.systemPackages = [ pkgs.hyprlock ];

  # Let Hyprlock use PAM
  security.pam.services.hyprlock = {};

  # === Screen Locker ===
}
