#!/bin/bash

printf "%-20s %s\n" "Name" "PID"

current_pid=$$

while [ $current_pid -ne 1 ]; do
    current_name=$(ps -p $current_pid -o comm=)
    printf "%-20s %d\n" "$current_name" "$current_pid"
    current_pid=$(ps -p $current_pid -o ppid=)
done

printf "%-20s %d\n" "systemd" 1
