# My Command Cheatsheet

## Package Management (yay/pacman)
- `yay -Rns <package>` — Remove package and unneeded dependencies  
- `yay -Rns $(yay -Qdtq)` - # Remove all orphans + unneeded deps

## systemd
- `systemctl list-units --type=service` - See everything currently running
- `sudo systemctl disable/enable --now [service]` - Start and stop services at boot+immediate

## nvim
- `gcc` - comment out a line

## cmake
- `cmake --build build -j$(nproc)` - # Build every target in the project
- `cmake -B build -DCMAKE_BUILD_TYPE=Release` - # Configure : generates build files

## perf
- `perf stat ./[program]` - #  Run program and print hardware counter totals: cycles, instructions, branch misses, cache misses, context switches
    ### flags
    - `-e` - # Choose specific counters to monitor 
    - `-r [count]` - # Run certain number of times and report mean and stddev for counters
- `perf list` - Show all counters the CPU supports
- `perf record -g ./[program]` - # Sample the program as it runs — periodically snapshot the instruction pointer and call stack. -g captures call stacks so you can trace HOW you got to a hot function
- `perf report` - Open interactive TUI

## Misc 
- `ncdu` - Interactive Drive Usage analyser
- `jobs -l  ->  fg [job-id]` - Running Jobs Stopped With <ctl-z>
- `smartctl -a` - Monitor Drive Health
- `sudo iotop -oPa` - Monitor Drive Read/Writes Live
- `sudo dmidecode -t memory | grep -E "Size|Speed|Type|Locator|Manufacturer"` - Hardware mem summary

## Steam 
- `gamescope -f -O DP-1 -w 2560 -h 1440 --force-grab-cursor -- %command%`
