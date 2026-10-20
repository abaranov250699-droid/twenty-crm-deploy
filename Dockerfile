FROM twentycrm/twenty:latest

# Для Railway даем Node.js до 2GB памяти при необходимости
ENV NODE_OPTIONS="--max-old-space-size=2048"

USER root
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh && chown 1000:1000 /app/start.sh
USER 1000

CMD ["/app/start.sh"]
