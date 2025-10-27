# 🍔 Foodify — Flutter + Node.js Full Stack App

A complete **food delivery & ordering app** built with **Flutter (frontend)** and **Node.js + Express (backend)** using the **MVC architecture**.

---

## 🧱 Tech Stack

### 🔹 Frontend
- Flutter (Dart)
- Provider for state management
- RESTful API integration
- Light & Dark themes
- MVC-inspired clean architecture

### 🔹 Backend
- Node.js + Express.js
- MongoDB (Mongoose ORM)
- JWT Authentication
- MVC pattern (Model–View–Controller)
- Secure API routes with validation

---

## 📁 Folder Structure

### **Flutter Project**

lib/ │ ├── main.dart │ ├── core/ │   ├── constants/ │   │   ├── colors.dart │   │   ├── strings.dart │   │   ├── sizes.dart │   │   └── api_endpoints.dart │   │ │   ├── theme/ │   │   ├── app_theme.dart │   │   ├── light_theme.dart │   │   └── dark_theme.dart │   │ │   └── utils/ │       ├── media_query_utils.dart │       ├── validators.dart │       └── helpers.dart │ ├── data/ │   ├── models/ │   │   ├── user_model.dart │   │   ├── food_item_model.dart │   │   └── order_model.dart │   │ │   ├── services/ │   │   ├── api_service.dart │   │   ├── auth_service.dart │   │   └── local_storage.dart │   │ │   └── repositories/ │       ├── user_repository.dart │       └── order_repository.dart │ ├── presentation/ │   ├── screens/ │   │   ├── home/ │   │   │   ├── home_screen.dart │   │   │   └── widgets/ │   │   │       └── food_card.dart │   │   │ │   │   ├── auth/ │   │   │   ├── login_screen.dart │   │   │   ├── register_screen.dart │   │   │   └── widgets/ │   │   │       └── auth_form.dart │   │   │ │   │   └── order/ │   │       └── order_screen.dart │   │ │   ├── widgets/ │   │   ├── custom_button.dart │   │   ├── custom_text_field.dart │   │   └── loading_indicator.dart │   │ │   └── routes/ │       └── app_routes.dart │ └── providers/ ├── app_provider.dart ├── auth_provider.dart └── order_provider.dart

---

### **Backend (Node.js + Express)**

backend/ ├── server.js ├── package.json ├── .env ├── config/ │     └── db.js ├── controllers/ │     └── userController.js ├── models/ │     └── userModel.js ├── routes/ │     └── userRoutes.js ├── middleware/ │     └── authMiddleware.js ├── uploads/ └── tests/ └── app.test.js

---

## ⚙️ Installation Guide

### 🧩 Backend Setup
```bash
cd backend
npm install
npm run dev

Make sure your .env file includes:

PORT=5000
MONGO_URI=your_mongodb_url
JWT_SECRET=your_secret_key


---

🧩 Frontend Setup

cd foodify_flutter
flutter pub get
flutter run

Make sure your api_endpoints.dart matches your local backend:

const String baseUrl = "http://10.0.2.2:5000/api";

(Use 10.0.2.2 for Android Emulator or your PC’s IP address for a real device.)


---

🧠 Features

💻 Backend (Node.js)

JWT-based user authentication

Password hashing with bcrypt

RESTful API for users, food items, and orders

Error handling & validation

CORS and Helmet for security


📱 Frontend (Flutter)

Responsive UI with MediaQuery Utils

Light/Dark theme support

Auth screens (login/register)

Food item listing

Order management

Local storage for session caching



---

🧪 Development Tools

Tool	Purpose

nodemon	Auto restarts backend server
eslint	Linting & code quality
jest + supertest	API testing
provider	Flutter state management
shared_preferences	Local storage in Flutter



---

📸 UI Preview

Add screenshots of your Foodify app here once built.


---

👨‍💻 Author

Faisal Ijaz
Full Stack Developer | Flutter + Node.js | AWS Certified
LinkedIn • GitHub • Fiverr


---

🧾 License

This project is licensed under the MIT License.


---

🚀 Notes

For local testing on a physical device, connect both backend and mobile to the same Wi-Fi.

Always run backend before starting Flutter app.


---
