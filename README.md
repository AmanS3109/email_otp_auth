# Django OTP Email Authentication API

This is a minimal Django backend project for email-based OTP verification, built as per the assignment requirements.

## ✅ Features

- Accept user email via API
- Generate and send a 6-digit OTP
- Verify the OTP
- Docker support for easy setup
- Mark user as verified after successful OTP verification
- OTP is printed to terminal (simulated email)

---

## 📦 Tech Stack

- Python 3.x
- Django
- Docker
- Django REST Framework

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://[github.com/AmanS3109/email-otp-auth.git](https://github.com/AmanS3109/email_otp_auth/tree/main)
cd email_otp_auth
```

### 2. Set Up Virtual Environment

```bash
python -m venv venv
source venv/bin/activate  # Linux/macOS
venv\Scripts\activate     # Windows
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

If `requirements.txt` is not generated yet:

```bash
pip install django djangorestframework
```

### 4. Apply Migrations

```bash
python manage.py makemigrations
python manage.py migrate
```

### 5. Create Superuser (Optional for admin)

```bash
python manage.py createsuperuser
```

---

## 🛠️ Run the Server

```bash
python manage.py runserver
```

---

## 📮 API Endpoints

### 1. Request OTP

- **Endpoint:** `POST /api/request-otp`
- **Body:**

```json
{
  "email": "user@example.com"
}
```

- **Response:**

```json
{
  "message": "OTP sent successfully."
}
```

- ✅ OTP will be printed to terminal.

---

### 2. Verify OTP

- **Endpoint:** `POST /api/verify-otp`
- **Body:**

```json
{
  "email": "user@example.com",
  "otp": "123456"
}
```

- **Response (Success):**

```json
{
  "message": "OTP verified successfully."
}
```

- If OTP is incorrect:

```json
{
  "error": "Invalid OTP."
}
```

---

## 📁 Project Structure

```
email_otp_auth/
├── email_otp_auth/        # Project settings
│   ├── settings.py
│   ├── urls.py
│   └── ...
├── users/                 # App for user/otp handling
│   ├── models.py
│   ├── views.py
│   ├── urls.py
│   ├── serializers.py
│   └── ...
├── manage.py
├── requirements.txt
└── ...
```

---

## docker setup
- docker-compose up --build
- docker-compose exec web python manage.py createsuperuser

## 📌 Notes

- No frontend included.
- OTP is **printed** to the terminal for development/testing.
- You can later integrate an email backend if needed.

---

## ✍️ Author

- **Aman Singh** 
