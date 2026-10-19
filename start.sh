#!/bin/sh
set -e

# По умолчанию в бесплатном тарифе (512MB RAM) не запускаем второй тяжелый процесс воркера в фоне,
# чтобы сервер не выбило по памяти. При переходе на платный план можно передать ENABLE_COMBINED_WORKER=true.
if [ "${ENABLE_COMBINED_WORKER:-false}" = "true" ]; then
    echo "[Twenty] Starting background BullMQ queue worker..."
    node dist/queue-worker/queue-worker &
fi

echo "[Twenty] Starting Twenty CRM web server on port ${PORT:-3000}..."
exec node dist/main
