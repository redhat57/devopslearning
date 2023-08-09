#!/bin/bash

# Define ANSI escape codes for formatting
bold=$(tput bold)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
reset=$(tput sgr0)

# Function to display highlighted output
highlight() {
  echo "${bold}${1}${reset}"
}

# Display system information
highlight "${green}Current user: $(whoami)"
highlight "${yellow}CPU info: $(lscpu)"
highlight "${red}Free memory: $(free -h)"
