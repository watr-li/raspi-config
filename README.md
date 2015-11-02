# Raspi

* The IP of the raspi can be configured via the cmdline.txt file.

 

# Troubleshooting

* Make sure that, in the `stage/bin/dashboard` file on the line that says `declare -r app_classpath=...`, the first item of the classpath is `$lib_dir/../conf:`.
* PAN ID und Channel auf beiden geraeten gleich? (Channel 26, PanID 0x23) 
* Is the raspi connected to the internet? (for tweets)
* if dns is not working, edit DNS server in /etc/resolv.conf and set `nameserver 8.8.8.8`
