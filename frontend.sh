cd /home/pi/watrli &&
	cp dashboard stage/bin/ &&
	cp config.properties stage/conf/ &&
	cp application.conf stage/conf/ &&
	mkdir -p stage/uploads/pictures &&
	JAVA_OPTS="-Xmx64M -Xms16M -XX:PermSize=24M -XX:MaxPermSize=64M -Ddashboard.uploadDirectory=/home/pi/watrli/stage/uploads" \
		./stage/bin/dashboard
