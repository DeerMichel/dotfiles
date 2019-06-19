#!/bin/bash

# colors
RESET=$(printf "\033[m")
RED=$(printf "\033[31m")
GREEN=$(printf "\033[32m")
YELLOW=$(printf "\033[33m")
CYAN=$(printf "\033[36m")
BOLD=$(printf "\033[1m")

# print bold
bold() {
    echo "${BOLD}$1${RESET}"
}

# print debug
debug() {
    echo "${GREEN}[debug] $1${RESET}"
}

# print info
info() {
    echo "${CYAN}[info] $1${RESET}"
}

# print warning
warn() {
    echo "${YELLOW}[warn] $1${RESET}"
}

# print error
error() {
    echo "${RED}[error] $1${RESET}"
}