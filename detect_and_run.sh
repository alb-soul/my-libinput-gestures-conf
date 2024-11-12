#!/bin/bash

# Dapatkan ID jendela aktif
active_window_id=$(xdotool getactivewindow)

# Dapatkan WM_CLASS dari jendela aktif
window_class=$(xprop -id $active_window_id | grep WM_CLASS | awk -F '"' '{print $4}')

# Deteksi apakah WM_CLASS adalah gnome-terminal
if [[ "$window_class" == "Gnome-terminal" ]]; then
    # Jika jendela adalah gnome-terminal, kirimkan kombinasi tombol Ctrl+Shift+T
    xdotool key ctrl+shift+t
else
    # Jika bukan gnome-terminal, kirimkan kombinasi tombol Ctrl+T
    xdotool key ctrl+t
fi
