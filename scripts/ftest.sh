#!/bin/bash

# Used for testing and comparing fonts in the terminal

mapfile -t txt < resources/ftest.txt
echo
printf "%s\n" "${txt[@]}"
echo
printf "\e[3m%s\e[0m\n" "${txt[@]}"
echo
