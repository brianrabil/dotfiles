# This is the main entry point for NixOS configuration. You can link your repository’s configuration to your system’s configuration.nix file.
{
  imports = [ ./nix-config/default.nix ];
  # Additional system-wide settings
}