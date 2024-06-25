# This file will include your main configuration.
{ config, pkgs, ... }:
{
  imports = [
    ./hardware
    ./users
    ./services
    ./packages
  ];

  # Additional system-wide settings
}