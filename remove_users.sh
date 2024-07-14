#!/bin/bash

# Variables
REMOTE_SERVER="root@192.168.29.158"
USER_LIST="users.txt"

# Check if the user list file exists
if [ ! -f "$USER_LIST" ]; then
    echo "Error: $USER_LIST does not exist."
    exit 1
fi

# Loop through each user in the list and remove them from the remote server
while IFS= read -r USER; do
    # Skip empty lines or lines starting with a hash (comments)
    if [[ -z "$USER" || "$USER" == \#* ]]; then
        continue
    fi
    
    echo "Removing user: $USER"

    ssh -t "$REMOTE_SERVER" <<EOF
        # Check if the user exists before attempting to remove
        if id "$USER" &>/dev/null; then
            echo "User $USER exists, proceeding with removal..."
            
            # Remove the user and their home directory
            userdel -r "$USER"
            
            # Check if the user was successfully removed
            if ! id "$USER" &>/dev/null; then
                echo "User $USER and their home directory have been removed."
            else
                echo "Failed to remove user $USER."
            fi
        else
            echo "User $USER does not exist."
        fi
EOF

done < "$USER_LIST"

