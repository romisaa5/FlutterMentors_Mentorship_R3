# 🧩 Assignment - Week 2

## 🎯 Task Objective
This week’s assignment focuses on:
- Applying **Flutter UI** design in a clean and structured way.  
- Understanding and implementing the **Clean Architecture pattern**.  
- Learning how to organize and separate project layers for scalability and readability.

---

## 🏗️ Project Structure
The project is divided into several main layers following **Clean Architecture** principles:
```
lib/
┣ core/
┃ ┣ helper/ → contains reusable helpers & extensions
┃ ┣ styles/ → contains colors, text styles, and themes
┃ ┣ utils/ → contains routing and navigation setup
┃ ┗ widgets/ → contains shared/custom reusable widgets
┃
┣ features/
┃ ┣ home/ → main feature (data, presentation layers)
┃ ┣ details/ → details feature (presentation layer)
┃ ┗ upgrade_plans/ → upgrade plans feature (presentation layer)
┃
┗ main.dart → app entry point
```
---

## 🧱 Architecture Explanation

- **core** → contains shared resources used across all features.  
- **features** → divided by functionality (e.g., home, details, upgrade plans).  
  - Each feature contains:
    - **data** → for data handling (APIs, repositories, etc.)  
    - **presentation** → for screens, widgets, and UI components  

---

## 🎨 UI Work
The assignment included building and styling screens such as:
- **Upgrade Plans Screen**
- **Details Screen**
- **Home Screen**

With a focus on:
- Using gradients and SVG assets  
- Building reusable widgets (e.g., buttons, cards)  
- Maintaining consistent design and spacing using `flutter_screenutil`

---

## 💡 Learnings
- How to apply **Clean Architecture** in Flutter.  
- Importance of organizing the project by **features** not **layers** only.  
- Reusability and maintainability of widgets and styles.  


---

## 🎥 Demo  

<div align="center">
  <video src="https://github.com/user-attachments/assets/9dd6a470-bf9f-4d33-bc00-f38652eae1ab" controls width="480" style="border-radius: 12px;"></video>
</div>

---

## 🧾 Summary
This week helped to strengthen the understanding of:
> “Writing clean, structured, and scalable Flutter code while maintaining beautiful UI.”

-
