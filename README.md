# KeePassXC Bash Scripts

This repository contains two Bash scripts designed for interacting with KeePassXC, a popular password manager. These scripts allow users to view stored passwords and generate random passwords without needing to log in first.

## Scripts

1. **show_keepassxc_db.sh**: This script displays the stored passwords and usernames from your KeePassXC database.

2. **add_random_password.sh**: This script generates a random password and allows you to add a new entry to your KeePassXC database without needing to unlock it first.

## Prerequisites

Before using the scripts, ensure you have the following installed:

- **KeePassXC**: The main application for managing passwords. [Installation Guide](https://keepassxc.org/docs/#installation)
- **KeePassXC CLI**: The command-line interface for KeePassXC.
- **XMLStarlet**: A command-line XML toolkit. You can install it using:
  
  ```bash
  sudo apt install xmlstarlet
  ```

## Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/zslova/KeepassXC-Terminal.git
   cd repository
   ```

2. Make the scripts executable:

   ```bash
   chmod +x show_keepassxc_db.sh add_random_password.sh
   ```

## Usage

### Show KeePassXC Database

To view your stored passwords, run the following command:

```bash
./show_keepassxc_db.sh
```

You will be prompted to enter the path to your KeePassXC database file and your master password.

### Add Random Password

To generate a random password and add a new entry to your KeePassXC database, use the following command:

```bash
./add_random_password.sh
```

You will be prompted to enter the path to your KeePassXC database file and the details of the new entry.

## License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## Acknowledgements

- [KeePassXC](https://keepassxc.org)
- [XMLStarlet](http://xmlstar.sourceforge.net/)
