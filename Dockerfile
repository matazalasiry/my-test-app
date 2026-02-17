# اختر صورة Python بسيطة
FROM python:3.9-slim

# إعداد المجلد داخل الحاوية
WORKDIR /app

# نسخ الملفات إلى الحاوية
COPY . .

# تثبيت التبعيات
RUN pip install --no-cache-dir -r requirements.txt

# تعيين المنفذ
EXPOSE 5000

# تشغيل التطبيق
CMD ["python", "app.py"]
