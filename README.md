# zabbix
Ubuntu version 
Zabbix on docker with added ssl scripts.

Run sh install.sh inside zabbix directory.
Waith for the process to finish.

Check your IP and open it in your browser.

Use Admin for Username and zabbix for password.

zabbix_backup.sh will create a DB backup.
You can copy it to your /bin/ folder and insert the following line crontab:

0 1 * * *  /bin/sh /bin/zabbix_backup.sh

it will initiate dump in 1AM every day and save it in /mnt folder

Enjoy!
