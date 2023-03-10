#!/bin/bash

xdg-open https://www.google.com

# Prompt the user to enter a domain name

echo "Please enter a domain name:"

read domain

# Validate that the input is "google.com"

while [[ "$domain" != "google.com" ]]; do

  echo "Error: Invalid input. Please enter 'google.com'"

  read domain

done

# Perform the ping operation and store the results in a txt file

echo "Pinging $domain five times..."

ping -c 5 $domain > ping_results.txt



echo "Ping operation completed. Results are stored in ping_results.txt"
