#!/bin/bash
SESSION=$USER

cd /home/pi/watrli

tmux -2 new-session -d -s $SESSION

tmux new-window -t $SESSION:1
tmux split-window -v
tmux split-window -h

tmux select-pane -t 0
tmux send-keys "./frontend.sh" C-m
tmux select-pane -t 1  
tmux send-keys "./proxy.sh" C-m
tmux select-pane -t 2  
tmux send-keys "sudo ./wpan.sh && sudo ./fix_nameserver.sh && sudo ./sync_time.sh" C-m

tmux attach -t $SESSION
