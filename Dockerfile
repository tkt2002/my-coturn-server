FROM coturn/coturn:latest

ENV TURN_USER=${TURN_USER}
ENV TURN_PASS=${TURN_PASS}

COPY turnserver.conf /etc/turnserver.conf

CMD turnserver -a -o -v -n --user=${TURN_USER}:${TURN_PASS} --no-cli --min-port=49152 --max-port=65535 --min-port=3478 --max-port=3478 --log-file=/var/log/turnserver.log
