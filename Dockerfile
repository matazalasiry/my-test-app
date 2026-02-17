# اختيار صورة أساسية
FROM node:14

# إعداد مجلد العمل
WORKDIR /app

# نسخ الكود إلى الحاوية
COPY . .

# تثبيت التبعيات
RUN npm install

# تحديد المنفذ
EXPOSE 8080

# تشغيل التطبيق
CMD ["npm", "start"]
