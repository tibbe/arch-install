#!/bin/bash

# Manually install rustup if not already available
if ! command -v rustup &>/dev/null; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi
