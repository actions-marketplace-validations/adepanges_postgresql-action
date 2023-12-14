FROM docker:stable

COPY entrypoint.sh /entrypoint.sh
COPY postgres/Dockerfile /postgres/Dockerfile

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
