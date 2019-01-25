FROM claudiodangelis/percona-xtrabackup:latest

RUN rm -rf /tmp/* /var/lib/apt/lists/* /var/log/*

ADD entrypoint.sh /bin/entrypoint
ADD backup.sh /bin/backup

RUN chmod 755 /bin/entrypoint /bin/backup

ENTRYPOINT ["entrypoint"]
