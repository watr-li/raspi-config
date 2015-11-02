#!/bin/bash -x

kill -s KILL `pgrep ifplugd`
modprobe ipv6
ip link set wpan0 down
ip link set lowpan0 down
iwpan phy phy0 set channel 0 26
ip link add link wpan0 name lowpan0 type lowpan
iwpan dev wpan0 set pan_id 0x23
ip link set wpan0 up
ip link set lowpan0 up
rmmod nhc_udp
echo "6LoWPAN set up"
