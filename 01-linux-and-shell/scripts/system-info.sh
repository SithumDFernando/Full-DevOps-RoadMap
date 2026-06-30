#!/bin/bash
# A simple script to print system information

echo "=== System Information ==="
echo "OS Info:"
uname -a
echo ""

echo "Disk Usage:"
df -h /
echo ""

echo "Memory Usage:"
free -m 2>/dev/null || echo "free command not available on this OS (e.g. macOS)"
echo ""

echo "Running Process Count:"
ps aux | wc -l
echo "=========================="
