# Flutter Widgets Examples  

This project contains practical examples of **essential Flutter Widgets**:  

1. **Badge**  
2. **NavigationRail**  
3. **SegmentedButton**  

---

## 1️⃣ Badge  

**Description:**  
- The Badge widget is a small Material element that appears on top of another widget to display brief information, such as a notification count or status.  
- If no label is provided, it appears as a small filled circle.  
- If a label is provided, it appears as a small stadium-shaped rectangle on top of the child widget.  

**Usage:**  
- Typically used on icons, buttons, or navigation elements to show counts or status indicators.  
- Can be dynamic, updating its content when a value changes, like incrementing a notification counter.  

---

## 2️⃣ NavigationRail  

**Description:**  
- NavigationRail is a vertical navigation component used for switching between a small number of views (usually 3–5).  
- Designed for wide screen layouts such as **desktop** or **tablet in landscape mode**.  
- For smaller screens (like mobile portrait), using a BottomNavigationBar is recommended.  

**Usage:**  
- Placed typically as the first or last element in a Row within a Scaffold body.  
- Supports icons and labels for each destination.  
- Ideal for apps that require quick navigation between main views.  

---

## 3️⃣ SegmentedButton  

**Description:**  
- A Material button that allows users to select from a limited set of options (usually 2–5).  
- Supports single or multiple selection via the `multiSelectionEnabled` option.  
- Commonly used for switching views, applying filters, or sorting elements.  

**Usage:**  
- Each segment can be customized with labels, values, and enabled/disabled state.  
- Ideal for scenarios where quick, limited choices are needed.  


