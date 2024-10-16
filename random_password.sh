#!/bin/bash

# Generate a random password with keepassxc-cli (adjust parameters as needed)
random_password=$(keepassxc-cli generate --length 16 --lower --upper --numeric --special)

# Output the generated password
echo "Generated Random Password: $random_password"

# Optionally copy the password to the clipboard (requires xclip or similar tool)
# Uncomment the following line if you want to use this feature
# echo -n "$random_password" | xclip -selection clipboard
# echo "Password copied to clipboard."

