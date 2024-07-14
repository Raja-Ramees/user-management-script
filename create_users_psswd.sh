#!/bin/bash

# Variables
REMOTE_SERVER="root@192.168.29.158"
USER_LIST="users.txt"

# Loop through each user in the list and create them on the remote server
while IFS= read -r USER; do
    # Skip empty lines or lines starting with a hash (comments)
    if [[ -z "$USER" || "$USER" == \#* ]]; then
        continue
    fi
    
    echo "Creating user: $USER"

    ssh -t "$REMOTE_SERVER" <<EOF
        # Create the user
        useradd "$USER"
        
        # Set the user password
        echo "$USER:Srw1819@20" | chpasswd
        
        # Add the user to the sudo group (wheel group)
        usermod -aG wheel "$USER"
        
        # Optional: Set up SSH directory and authorized_keys for the user
        mkdir -p /home/$USER/.ssh
        chown $USER:$USER /home/$USER/.ssh
        chmod 700 /home/$USER/.ssh
        touch /home/$USER/.ssh/authorized_keys
        chown $USER:$USER /home/$USER/.ssh/authorized_keys
        chmod 600 /home/$USER/.ssh/authorized_keys
EOF

done < "$USER_LIST"

cat: cat: No such file or directory
#!/bin/bash

# Variables
REMOTE_SERVER="root@192.168.29.158"
USER_LIST="users.txt"

# Loop through each user in the list and create them on the remote server
while IFS= read -r USER; do
    # Skip empty lines or lines starting with a hash (comments)
    if [[ -z "$USER" || "$USER" == \#* ]]; then
        continue
    fi
    
    echo "Creating user: $USER"

    ssh -t "$REMOTE_SERVER" <<EOF
        # Create the user
        useradd "$USER"
        
        # Set the user password
        echo "$USER:Srw1819@20" | chpasswd
        
        # Add the user to the sudo group (wheel group)
        usermod -aG wheel "$USER"
        
        # Optional: Set up SSH directory and authorized_keys for the user
        mkdir -p /home/$USER/.ssh
        chown $USER:$USER /home/$USER/.ssh
        chmod 700 /home/$USER/.ssh
        touch /home/$USER/.ssh/authorized_keys
        chown $USER:$USER /home/$USER/.ssh/authorized_keys
        chmod 600 /home/$USER/.ssh/authorized_keys
EOF

done < "$USER_LIST"

