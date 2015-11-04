#!/bin/bash

cat << EOF | mysql -u root -proot watrli-dashboard
	SET FOREIGN_KEY_CHECKS = 0;
	truncate table plant_humidities;
	truncate table nodes;
	truncate table plants;
	truncate table files;
	SET FOREIGN_KEY_CHECKS = 1;
EOF
