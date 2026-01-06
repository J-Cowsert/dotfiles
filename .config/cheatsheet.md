# My Command Cheatsheet

## Package Management (yay/pacman)
- `yay -Rns <package>` — Remove package and unneeded dependencies  
- `yay -Rns $(yay -Qdtq)` - # Remove all orphans + unneeded deps

## Misc 
- `ncdu` - Interactive Drive Usage analyser
- `jobs -l  ->  fg [job-id]` - Running Jobs Stopped With <ctl-z>
- `smartctl -a` - Monitor Drive Health
- `sudo iotop -oPa` - Monitor Drive Read/Writes Live

## Steam 
- `gamescope -f -O DP-1 -w 2560 -h 1440 --force-grab-cursor -- %command%`
