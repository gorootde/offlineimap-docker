FROM debian:buster-slim

RUN apt-get update && apt-get install -y cron offlineimap ca-certificates
RUN useradd -ms /bin/bash imapuser

VOLUME [ "/localrepo" ]
VOLUME [ "/offlineimap.conf" ]

CMD [ "offlineimap", "-c", "/offlineimap.conf" ]
