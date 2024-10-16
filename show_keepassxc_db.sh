#!/bin/bash

# Prompt the user for the KeePassXC database file path
read -p "Enter the full path to your KeePassXC database file: " DB_PATH

# Check if the file exists
if [[ ! -f "$DB_PATH" ]]; then
  echo "Error: The file '$DB_PATH' does not exist."
  exit 1
fi

# Inform the user that they will need to enter their password
echo "Please enter your KeePassXC master password when prompted."

# Use keepassxc-cli export to show all entries with passwords in XML format
keepassxc-cli export "$DB_PATH" | \
xmlstarlet sel -T -t \
  -m "//Entry" \
  -v "concat('Title: ', String[Key='Title']/Value, ', Username: ', String[Key='UserName']/Value, ', Password: ', String[Key='Password']/Value)" \
  -n

