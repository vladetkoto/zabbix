#!/bin/bash
# DB backup script vladetkoto@gmail.com

# Database credentials
user="root"
password="123qweASD"
host="localhost"
db_name="--all-databases"

# Other options
backup_path="/mnt"
/bin/date=$(date +"%d-%b-%Y")

# Set default file permissions
umask 177

# Dump database into SQL file
/usr/bin/docker exec zabbix32conatainer_mysql-server_1 mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$date.sql

# Delete files older than 30 days
find $backup_path/* -mtime +30 -exec rm {} \;
