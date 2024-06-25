# Define the packages to be installed.
{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    git
    nvim
    # Add more packages
  ];
}