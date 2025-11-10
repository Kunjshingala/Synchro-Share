# SynchroShare  

**SynchroShare** is a Flutter-based cross-platform app (Android & iOS) that enables **peer-to-peer file and folder sharing** over a local network. It’s designed with a clean UI/UX, robust sync logic, and optional BaaS integration for advanced features like cloud backup and remote access.  

---

## ✨ Features  
- 📡 Local peer-to-peer file & folder sharing (no internet needed)  
- 🔄 Real-time synchronization across devices  
- 🚀 Modern, clean Flutter UI  
- ☁️ Optional BaaS integration (cloud sync, backup, accounts)  
- 📱 Cross-platform (Android & iOS)  

---

## 🛠 Tech Stack  
- **Framework**: Flutter (Dart)  
- **State Management**: (e.g. Provider, Riverpod, Bloc — whichever you plan to use)  
- **Networking**: Local Wi-Fi/LAN sync, (mention packages like `flutter_mdns_plugin`, `http`, `web_socket_channel` if using)  
- **Storage**: Local DB (Hive / Sqflite), Shared Preferences  
- **Other**: Push Notifications, Analytics  

---

## 🚀 Getting Started  

1. Clone the repository  
   ```bash
   git clone https://github.com/your-username/synchro_share.git
   cd synchro_share
   ```  

2. Install dependencies  
   ```bash
   flutter pub get
   ```  

3. Run the app  
   ```bash
   flutter run
   ```  

---

## 📄 Project Documentation  

📌 You can view the full roadmap and milestones here:  
[Synchro Share: Feature Roadmap & Milestones](https://docs.google.com/document/d/1K-gBONwoiRf747qKNCeDxdoR8z114PpYsKlQ67MQZ0E/edit?usp=sharing)  

---

## 📂 Project Structure  

```plaintext
lib/
├── features/
│   ├── expenses/[README.md](../../Downloads/README.md)
│   │   ├── models/
│   │   │   ├── expense.dart
│   │   │   ├── expense_category.dart
│   │   │   └── expense_filter.dart[README.md](../../Downloads/README.md)
│   │   ├── services/
│   │   │   ├── expense_service.dart
│   │   │   └── currency_service.dart
│   │   ├── repositories/
│   │   │   ├── expense_repository.dart
│   │   │   └── currency_repository.dart
│   │   ├── use_cases/
│   │   │   ├── process_expense_approval_use_case.dart
│   │   │   └── bulk_expense_import_use_case.dart
│   │   ├── view_models/
│   │   │   ├── add_expense_view_model.dart
│   │   │   ├── expense_list_view_model.dart
│   │   │   └── expense_detail_view_model.dart
│   │   └── views/
│   │       ├── add_expense_view.dart
│   │       ├── expense_list_view.dart
│   │       └── expense_detail_view.dart
│
│   ├── authentication/
│   │   ├── models/
│   │   ├── services/
│   │   ├── repositories/
│   │   ├── view_models/
│   │   └── views/
│
│   ├── reports/
│   │   ├── models/
│   │   ├── services/
│   │   ├── repositories/
│   │   ├── use_cases/
│   │   ├── view_models/
│   │   └── views/
│
│   └── settings/
│       ├── models/
│       ├── services/
│       ├── repositories/
│       ├── view_models/
│       └── views/
│
├── shared/
│   ├── widgets/
│   │   ├── loading_indicator.dart
│   │   ├── error_message.dart
│   │   └── custom_text_field.dart
│   ├── services/
│   │   ├── navigation_service.dart
│   │   ├── local_storage_service.dart
│   │   ├── analytics_service.dart
│   │   └── notification_service.dart
│   ├── models/
│   │   ├── api_response.dart
│   │   └── user.dart
│   ├── exceptions/
│   │   ├── network_exception.dart
│   │   ├── authentication_exception.dart
│   │   └── validation_exception.dart
│   └── utils/
│       ├── validators.dart
│       ├── formatters.dart
│       └── constants.dart
│
├── main.dart
└── app.dart
```  

https://pro.codewithandrea.com/get-started-flutter/intro/13-platform-channels-ffi
https://www.kodeco.com/21512310-calling-native-libraries-in-flutter-with-dart-ffi