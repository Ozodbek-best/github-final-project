#!/bin/bash

# Simple Interest Calculator

read -p "Enter principal amount: " principal
read -p "Enter rate of interest (%): " rate
read -p "Enter time period (years): " time

si=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")
total=$(awk "BEGIN {printf \"%.2f\", $principal + $si}")

echo "Simple Interest = $si"
echo "Total Amount = $total"
