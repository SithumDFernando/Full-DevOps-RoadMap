#!/bin/bash
# Simulates a DNS issue by adding a bad hosts entry.
# Note: Requires sudo. Not strictly recommended to run without understanding,
# but provided for the exercise.

echo "This script simulates a broken DNS entry for github.com."
echo "It requires sudo privileges to modify /etc/hosts."

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (e.g. sudo ./break-dns.sh)"
  exit 1
fi

echo "127.0.0.1 github.com" >> /etc/hosts
echo "Done. Try 'curl -I https://github.com' now."
echo "To fix it, remove the line '127.0.0.1 github.com' from /etc/hosts."
