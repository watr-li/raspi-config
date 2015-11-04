# Raspi

* The IP of the raspi can be configured via the cmdline.txt file.

1. Start Raspi and SSH to it
2. Make sure it has internet connectiviy for twitter
3. go to `~/watrli/`
4. Run `start.sh`
5. Watch as things explode around you


# Nodes

1. Get the `nodes` and `RIOT` repositories from the watr.li organization
2. Build `nodes/plant_node` for the SAMR21 (make sure to use the watrli RIOT)
3. Flash to device
    * Debug output will not be displayed using `make term`, you need a UART USB adapter thingy (ask peter)

# Troubleshooting

* Make sure that, in the `stage/bin/dashboard` file on the line that says `declare -r app_classpath=...`, the first item of the classpath is `$lib_dir/../conf:`.
* PAN ID und Channel auf beiden geraeten gleich? (Channel 26, PanID 0x23) 
* Is the raspi connected to the internet? (for tweets)
* if dns is not working, edit DNS server in /etc/resolv.conf and set `nameserver 8.8.8.8`
