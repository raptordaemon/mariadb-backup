# mariadb-backup

docker run --rm -it \
--link mariadb \
-v $(pwd)/backups:/backups \
-e MYUSER=root \
-e MYPASS=password \
-e MYHOST=mariadb \
-e MYPORT=3306 \ 
raptordaemon/mariadb-backup