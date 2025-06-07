#!/bin/bash

asusctl profile --next && current_profile=$(asusctl profile --profile-get) && notify-send -i system-settings "ASUS Profile" "Current Profile: $current_profile"
