# 🎮 Challenge 2: Interactive Physics Widget

This Flutter challenge demonstrates how to build a **mini interactive physics simulation** using `Draggable` and `DragTarget`.  
Users can drag colored balls and drop them into their matching containers with real-time visual feedback.

---

## ✨ Features
- 🟢 **3 draggable colored balls** (Red, Green, Blue).  
- 🎯 **Matching drop targets** for each color.  
- 👀 **Visual feedback** while dragging (highlighted containers).  
- ✅ **Success state** with check icon when a correct match is made.  
- ❌ **Error handling** with snack bars when dropping on the wrong container.  

---

## 🛠️ Widgets & Concepts Used
- `Draggable` → makes the colored balls draggable.  
- `DragTarget` → creates drop zones (containers).  
- `SnackBar` → shows success/error messages.  
- `setState` → updates UI dynamically after each drag/drop.  

---

## 📸 Demo Flow
1. Drag a ball from the top row.  
2. Hover it over a container → container highlights.  
3. Drop the ball:  
   - ✅ If correct → container fills with color + check mark.  
   - ❌ If wrong → error snackbar appears.  

---

## 📸 Demo