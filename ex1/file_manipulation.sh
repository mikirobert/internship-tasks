#!/bin/bash

# Check if the file name is "passwd"
filename="/etc/passwd"
if [ ! -f "$filename" ]; then
  echo "Error: File $filename not found."
  exit 1
fi

# 1. 
echo "Home directory: $(pwd)"

# 2. 
echo -e "\nList of all usernames:"
cut -d: -f1 "$filename"

# 3. 
echo -e "\nNumber of users: $(wc -l < "$filename")"

# 4. 
read -p "Enter the username to find the home directory: " username
user_home=$(grep "^$username:" "$filename" | cut -d: -f6)
echo -e "\nHome directory of $username: $user_home"

# 5. 
read -p "Enter UID range (e.g., 1000-1010): " uid_range
awk -v uid_start=$(echo "$uid_range" | cut -d'-' -f1) -v uid_end=$(echo "$uid_range" | cut -d'-' -f2) -F: '$3 >= uid_start && $3 <= uid_end {print $1}' "$filename"


# 6. 
echo -e "\nUsers with standard shells:"
grep -E '/bin/bash$|/bin/sh$' "$filename" | cut -d: -f1

# 7. 
sed 's/\//\\/g' "$filename" > "passwd_modified"

# 8. 
private_ip=$(hostname -I | awk '{print $1}')
echo -e "\nPrivate IP: $private_ip"

# 9. 
public_ip=$(curl -s ifconfig.me)
echo -e "\nPublic IP: $public_ip"

# 10. 
su -s /bin/bash john

# 11. 
echo -e "\nHome directory (after switching to john user): $(pwd)"

# to run the .sh again
exit