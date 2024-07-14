#!/bin/bash

# List of users with username and password
users=(
  "john:Srw1819@20"
  "suraj:Srw1819@20"
  "joffar:Srw1819@90"
)

for user in "${users[@]}"; do
  # Split username and password
  IFS=":" read -r username password <<< "$user"

  # Create user
  sudo useradd "$username"

  # Set the user's password
  echo "$username:$password" | sudo chpasswd

  # Set the password expiration to 1 day
  sudo chage -M 1 "$username"
done

