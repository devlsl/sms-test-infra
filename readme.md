# README.md

## Быстрый старт

### 1. Клонировать репозиторий вместе с submodules
```bash
git clone https://github.com/devlsl/sms-test-infra.git
cd sms-test-infra
git submodule update --init --recursive
```

### 2. Создать `.env`
```bash
cp .example.env .env
```

### 3. Запустить проект
```bash
docker compose up --build
```

### 4. Открыть в браузере
- Клиент: `http://localhost:5173`

### 5. Остановить
```bash
docker compose down
```

### 6. Остановить и удалить данные БД
```bash
docker compose down -v
```