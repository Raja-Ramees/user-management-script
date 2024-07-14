# User Management Scripts

Welcome to the **User Management Scripts** repository! This collection of Bash scripts is designed to help you manage user accounts efficiently on Unix-like systems. Whether you need to create users, set password expiration policies, or remove user accounts, these scripts provide a simple and effective solution.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Scripts](#scripts)
- [Usage](#usage)
- [Installation](#installation)
- [Contributing](#contributing)
- [License](#license)

## Overview

This repository includes a set of Bash scripts that automate common user management tasks. These scripts are useful for system administrators and DevOps professionals who need to manage user accounts on Linux systems.

## Features

- **Create Users**: Add new users with specified passwords.
- **Set Password Expiration**: Configure passwords to expire after a set period.
- **Remove Users**: Delete user accounts and associated files.
- **Account Expiration**: Set expiration dates for user accounts.

## Scripts

Here's a brief overview of the scripts included in this repository:

- **`create_users_psswd.sh`**: Creates new user accounts and sets their passwords. 
- **`remove_users.sh`**: Removes user accounts and cleans up related files.
- **`user_account_expire.sh`**: Sets expiration dates for user accounts.
- **`user_password_expire.sh`**: Configures password expiration policies for users.
- **`users.txt`**: A sample file containing user data for testing scripts.

## Usage

### Create Users and Set Passwords

To create users and set their passwords, run:

```bash
./create_users_psswd.sh
Set Password Expiration
To configure password expiration for users, execute:
./user_password_expire.sh
Remove Users
To remove users and their associated files, use:
./remove_users.sh
Set Account Expiration
To set expiration dates for user accounts, use:
./user_account_expire.sh
Installation
Clone the repository:
git clone https://github.com/Raja-Ramees/user-management-script.git
Navigate to the project directory:
cd user-management-script
Ensure the scripts are executable:
chmod +x *.sh
Edit the scripts as needed: Modify the scripts to fit your specific requirements, such as user names, passwords, or expiration policies.

Contributing
We welcome contributions to improve this project. If you'd like to contribute, please follow these steps:

Fork the repository.
Create a new branch (git checkout -b feature-branch).
Commit your changes (git commit -am 'Add new feature').
Push to the branch (git push origin feature-branch).
Create a new Pull Request.
License
This project is licensed under the MIT License. See the LICENSE file for details.

Feel free to open an issue if you encounter any problems or have suggestions for improvements.

Happy scripting!

### Key Points in This `README.md`:

1. **Overview**: Provides a summary of the repository and its purpose.
2. **Features**: Lists the key functionalities of the scripts.
3. **Scripts**: Describes each script briefly.
4. **Usage**: Instructions on how to run the scripts.
5. **Installation**: Steps to clone the repository and set up the scripts.
6. **Contributing**: Guidelines for contributing to the project.
7. **License**: Licensing information.

This format makes the `README.md` comprehensive and easy to navigate, helping users understand and use your scripts effectively. You can adapt and expand upon this template based on the specific details of your project.
