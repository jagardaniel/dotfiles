#!/bin/sh

# Disable mouse acceleration (flat acceleration profile)
# and set a speed that feels somewhat similar to Windows

device="Kingsis Peripherals ZOWIE Gaming mouse"

if xinput list --id-only "${device}" > /dev/null 2>&1; then
    xinput --set-prop "${device}" 'libinput Accel Profile Enabled' 0, 1
    xinput --set-prop "${device}" 'libinput Accel Speed' 0.5
else
    echo "Unable to find device ${device}" >&2
    exit 1
fi
