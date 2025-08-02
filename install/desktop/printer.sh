#!/bin/bash

yay -S --noconfirm --needed cups cups-pdf cups-filters system-config-printer
sudo systemctl enable --now cups.service
