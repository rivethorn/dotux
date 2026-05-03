#!/usr/bin/env python3

from sys import argv
import psutil
import subprocess


def check_for_waybar():
    for proc in psutil.process_iter():
        try:
            if "waybar" in proc.name().lower():
                return True
        except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
            pass
    return False


if __name__ == "__main__":
    if check_for_waybar():
        subprocess.run(["pkill", "waybar"])
    else:
        if "first" in argv:
            pass
            exit(0)
        subprocess.run(["waybar"])
        exit(0)
