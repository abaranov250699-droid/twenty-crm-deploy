FROM twentycrm/twenty:latest

USER root
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh && chown 1000:1000 /app/start.sh
USER 1000

CMD ["/app/start.sh"]
