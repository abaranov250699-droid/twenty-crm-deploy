# Twenty CRM — Deployment on Render with Neon PostgreSQL

Репозиторий для быстрого развертывания [Twenty CRM](https://twenty.com) на платформе [Render](https://render.com) с базой данных [Neon](https://neon.tech).

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/abaranov250699-droid/twenty-crm-deploy)

---

## 🚀 Быстрый запуск в 3 шага

### Шаг 1. Нажмите кнопку «Deploy to Render» выше
Или перейдите по прямой ссылке:
👉 **[https://render.com/deploy?repo=https://github.com/abaranov250699-droid/twenty-crm-deploy](https://render.com/deploy?repo=https://github.com/abaranov250699-droid/twenty-crm-deploy)**

---

### Шаг 2. Заполните переменные окружения в Render

При создании Blueprint Render запросит следующие переменные:

1. **`PG_DATABASE_URL`**:  
   Ваша строка подключения Neon (Direct connection):
   ```
   postgresql://neondb_owner:npg_9dTVDSlt7BIZ@ep-morning-voice-baxzbv8v.c-8.eu-central-1.aws.neon.tech/neondb?sslmode=require
   ```

2. **`REDIS_URL`**:  
   Строка подключения к Redis.  
   *Бесплатный Redis за 1 минуту:* зарегистрируйтесь на [Upstash](https://upstash.com), создайте бесплатную базу Redis в регионе Frankfurt (`eu-central-1`) и скопируйте строку подключения:
   ```
   rediss://default:ВАШ_ПАРОЛЬ@ep-xxxx.upstash.io:6379
   ```

3. **`SERVER_URL`**:  
   Публичный URL вашего сервиса на Render (например, `https://twenty-crm-xxxx.onrender.com`).  
   *(Если сервис ещё не создан, можно сначала указать временный URL, а после создания обновить в настройках Environment Variables).*

---

### Шаг 3. Запуск и первый вход

1. Нажмите **Apply** в Render.
2. Render скачает образ `twentycrm/twenty:latest`, запустит миграции базы данных в Neon и зарегистрирует фоновые задачи.
3. Первый запуск занимает **2–3 минуты** (накатываются схемы PostgreSQL).
4. Как только статус станет **Live**, откройте ваш URL в браузере и создайте аккаунт первого администратора!
