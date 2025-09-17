# 📘 Week 1 – OOP & SOLID Assessment

This repository contains the solutions for **five Dart/Flutter questions**.  
Each question originally presented flawed code. We analyzed the issues and applied **OOP concepts** and **SOLID principles** to refactor them into clean, extensible, and maintainable designs.  

---

## 🗂️ Project Structure

 ├── question_1.dart
 ├── question_2.dart
 ├── question_3.dart
 ├── question_4.dart
 └── question_5.dart


---

## ✅ Question 1 – Extensibility in Multi-Type Content
**Issue:**  
The original code violated the **Open-Closed Principle (OCP)** by using conditional type checks (`if/else`) for different content types. Adding new types required modifying existing code.  

**Solution:**  
We introduced an **abstract base class** for content items with a `build` method. Each content type (text, image, video, etc.) is implemented as a subclass. This allows adding new types without touching existing logic.  

📂 Fixed implementation: `question_1.dart`

---

## ✅ Question 2 – User Model with Firestore
**Issue:**  
The `UserModel` had **public fields** (breaking **Encapsulation**) and contained Firestore persistence logic inside the model (violating the **Single Responsibility Principle – SRP**).  

**Solution:**  
We privatized fields with validated getters/setters and extracted persistence into a dedicated `FirestoreService`. This separation ensures clean responsibilities and better data integrity.  

📂 Fixed implementation: `question_2.dart`

---

## ✅ Question 3 – Widget Safety in Navigation
**Issue:**  
Some subclasses of `Screen` (like `SettingsScreen`) could not safely substitute the base class, breaking the **Liskov Substitution Principle (LSP)**.  

**Solution:**  
We introduced a `Navigable` interface. Only classes that support navigation implement it. Non-navigable screens use their own methods. This ensures safe substitution and avoids runtime errors.  

📂 Fixed implementation: `question_3.dart`

---

## ✅ Question 4 – Widget Controller Design
**Issue:**  
The original `WidgetController` interface forced all classes to implement methods they didn’t need (e.g., animation, network), violating the **Interface Segregation Principle (ISP)**.  

**Solution:**  
We split the large interface into smaller, role-specific ones (basic, animation, network). Now, each controller only depends on what it actually needs, improving modularity and reducing unnecessary code.  

📂 Fixed implementation: `question_4.dart`

---

## ✅ Question 5 – Notification Service Design
**Issue:**  
The `AppNotifier` directly instantiated `LocalNotificationService`, creating **tight coupling** and violating the **Dependency Inversion Principle (DIP)**.  

**Solution:**  
We defined an abstract `Notifier` interface. Concrete implementations like `LocalNotificationService` implement it. `AppNotifier` depends on the abstraction, with the service injected through the constructor. This allows flexibility and easy testing.  

📂 Fixed implementation: `question_5.dart`

---

## 🎯 Principles Applied
Across the five solutions, we ensured the following:  
- **Abstraction & Polymorphism** → Used abstract classes/interfaces for contracts.  
- **Encapsulation** → Private fields with controlled access.  
- **SRP (Single Responsibility Principle)** → Each class has only one responsibility.  
- **OCP (Open-Closed Principle)** → Classes are open for extension but closed for modification.  
- **LSP (Liskov Substitution Principle)** → Subtypes can safely substitute their base type.  
- **ISP (Interface Segregation Principle)** → Clients depend only on the methods they need.  
- **DIP (Dependency Inversion Principle)** → High-level modules depend on abstractions, not concrete implementations.  

---

📌 With these refactorings, the system design is now **modular, extensible, and maintainable**, aligned with both **OOP best practices** and **SOLID principles**.  
