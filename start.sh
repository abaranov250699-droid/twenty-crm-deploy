#!/bin/sh
set -e

# Если включен комбинированный режим (по умолчанию true для экономии ресурсов)
if [ "${ENABLE_COMBINED_WORKER:-true}" = "true" ]; then
    echo "[Twenty] Starting background BullMQ queue worker..."
    node dist/queue-worker/queue-worker &
fi

echo "[Twenty] Starting Twenty CRM web server..."
exec node dist/main
