## Setup specific config script

# KDE Plasma 5.27.5 on Debian 12 / systemd / X11 / MXLinux23 does not map external
# touch screen correctly. Using with #T480 and DELL P2418HT.

# Having to rely running this command manually for now

## Betterment ideas
# - Dynamically check which input touch screen device is controlled.
#   Currently works with the main HDMI port only.

xinput map-to-output "Melfas LGD AIT Touch Controller" HDMI-2

# Parameters can be found with `xinput list` and `xrandr` commands.
