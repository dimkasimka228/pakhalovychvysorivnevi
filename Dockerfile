FROM node:20-alpine

# Встановлюємо NestJS CLI глобально для генерації та керування проектом [cite: 31, 32]
RUN npm install -g @nestjs/cli

WORKDIR /app

# Копіюємо файли залежностей для кешування шарів [cite: 34]
COPY package*.json ./

# Встановлюємо залежності. Якщо файлів ще немає, команда проігнорує помилку [cite: 35, 36]
RUN npm install --ignore-scripts 2>/dev/null || true

COPY . .

EXPOSE 3000

# Запуск у режимі розробки з автоматичним перезавантаженням [cite: 39]
CMD ["npm", "run", "start:dev"]