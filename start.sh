#!/bin/sh
set -e

# Синхронизируем порт с переменной окружения хостинга (Railway / Render / Docker)
export NODE_PORT="${PORT:-3000}"

# Запуск фонового воркера BullMQ
if [ "${ENABLE_COMBINED_WORKER:-true}" = "true" ]; then
    echo "[Twenty] Starting background BullMQ queue worker..."
    node dist/queue-worker/queue-worker &
fi

echo "[Twenty] Starting Twenty CRM web server on port ${NODE_PORT}..."
exec node dist/main
