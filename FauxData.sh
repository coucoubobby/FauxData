#!/bin/bash

# Clear the terminal
clear

# Title
echo -e "\033[1;32m==============================\033[0m"
echo -e "\033[1;32m          FauxData            \033[0m"
echo -e "\033[1;32m==============================\033[0m"

#!/bin/bash

# FauxData Tool

generate_fake_info() {
    local username=$1
    local ip_address="$((RANDOM % 255)).$((RANDOM % 255)).$((RANDOM % 255)).$((RANDOM % 255))"
    local phone_number="+1$((RANDOM % 900 + 100))$((RANDOM % 100 + 200))"
    local id_card="$((RANDOM % 900000000 + 100000000))"
    local credit_card="$((RANDOM % 9000000000000000 + 100000000000))"
    local wifi_pass="$((RANDOM % 100000000))"
    echo "Username: $username"

    echo "IP Address: $ip_address"
    echo "Phone Number: $phone_number"
    echo "ID Card: $id_card"
    echo "Credit Card: $credit_card"
    echo "WiFi Password: $wifi_pass"
}

# Main script
echo "Welcome To FauxData - Get Peoples Personal Info, please read the README.md of https://github.com/coucoubobby/FauxData before using."
read -p "Write username of a person: " username

    echo "Username found, stealing info..."
    generate_fake_info "$username"
