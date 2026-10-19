FROM twentycrm/twenty:latest

# Увеличиваем лимит памяти V8 heap для Node.js, чтобы миграции TypeORM не упирались в дефолтные 256MB
ENV NODE_OPTIONS="--max-old-space-size=420"

USER root
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh && chown 1000:1000 /app/start.sh
USER 1000

CMD ["/app/start.sh"]
