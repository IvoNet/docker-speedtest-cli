FROM python:3.5.7-alpine3.9

COPY entrypoint.sh /entrypoint.sh
RUN pip install speedtest-cli \
 && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]