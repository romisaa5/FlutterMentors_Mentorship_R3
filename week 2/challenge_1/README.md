# 📌 Challenge 1: Interactive Dismissible Lists

## 📖 Description
This challenge is about creating a **task management widget** in Flutter that allows users to:
- **Swipe to delete tasks** using `Dismissible`.
- **Reorder tasks** with `ReorderableListView`.
- **Confirm before deletion** through a confirmation dialog.
- **Undo task deletion** with a `SnackBar`.
- Store and manage tasks persistently using **Sqflite database**.

The goal of this challenge is to practice Flutter's UI interactivity combined with local database storage.

---

## 🚀 Features
- ✅ Swipe a task card to delete it  
- ✅ Confirmation dialog before deletion  
- ✅ Undo functionality with a styled `SnackBar`  
- ✅ Drag and reorder tasks using `ReorderableListView`  
- ✅ Persistent storage with **Sqflite** (tasks remain after restarting the app)  
- ✅ Add new tasks with custom due date using `showDatePicker`  


---

## 📂 Project Structure
```
lib/
├── models/
│ └── note_model.dart # Task model
├── utils/
│ └── sqflite_db.dart # Database helper using Sqflite
├── widgets/
│ ├── tasker_header.dart # Custom header widget
│ ├── tasker_card.dart # Task card with Dismissible
│ ├── show_snack_bar.dart # Success/Error/Undo snackbars
│ └── custom_dialog.dart # Confirmation dialog
├── views/
│ └── home_view.dart # Main screen with ReorderableListView
└── main.dart # Entry point with theme setup
```

---


## 🛠️ Technologies Used
- **Flutter** 
- **Sqflite** (local database storage)
- **Intl** (date formatting)
- **Material Components** (SnackBar, Dialog, DatePicker)

---

## 🎥 Demo Video

<div align="center">
  <video src="https://github.com/user-attachments/assets/2f4dd344-caa9-4d0f-bccb-53f5649274e4" controls width="480" style="border-radius: 12px;"></video>
</div>


---


## 🚀 Getting Started

Follow these steps to clone and run the project locally:

### 1. Clone the repository

```bash
git clone https://github.com/romisaa5/FlutterMentors_Mentorship_R3.git
```

### 2. Navigate to the project folder

```bash
cd FlutterMentors_Mentorship_R3/week 2/challenge_1
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the app

```bash
flutter run
```

---

⚠️ **Note**:

* Make sure you have Flutter SDK installed ([Install guide](https://docs.flutter.dev/get-started/install))
* Use an emulator or a physical device to run the app.
