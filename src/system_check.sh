#!/bin/bash

# --- Auto Test Ability ---
# This part checks if the script is running in a healthy environment
function check_env() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        echo "Success: Linux environment detected."
    else
        echo "Warning: Not a standard Linux environment."
    fi
}

# --- Automation Logic ---
# Collecting system info in a structured way
echo "--- SYSTEM REPORT ---"
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo "Memory Info:"
free -h | grep Mem

# Run the test
check_env
