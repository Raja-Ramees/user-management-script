#!/bin/bash

users=(
  "joy:Srw1819@20"
  "bob:Srw1819@30"
  "pradeep:Srw1819@40"
)

for user in "${users[@]}"; do
  IFS=":" read -r username password <<< "$user"
  sudo useradd -e 2024-07-25 "$username"
  echo "$username:$password" | sudo chpasswd
done

