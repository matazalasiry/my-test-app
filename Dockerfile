# اختيار صورة Node.js
FROM node:14

# إعداد مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ فقط package.json أولاً لتثبيت التبعيات قبل نسخ باقي الملفات
COPY package.json /app/

# تثبيت التبعيات
RUN npm install

# نسخ باقي الملفات إلى الحاوية
COPY . /app/

# فتح المنفذ
EXPOSE 8080

# تشغيل التطبيق
CMD ["npm", "start"]
