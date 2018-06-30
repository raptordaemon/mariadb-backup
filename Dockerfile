FROM mariadb

ENV BACKUPS_PATH=/backups
ENV MYUSER=root
ENV MYPASS=password
ENV MYHOST=mariadb
ENV MYPORT=3306

ADD		backup.sh /backup.sh

VOLUME [ "/backups" ]

ENTRYPOINT	["/backup.sh"]