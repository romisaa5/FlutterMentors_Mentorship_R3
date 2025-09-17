# Smart Ahwa Manager APP

This project is a **CLI-based Ahwa Manager App** implemented in Dart, designed with **Object-Oriented Programming (OOP)** principles and **SOLID** design principles.  
The goal is to provide a clean, extensible, and maintainable architecture.

---

## 🗂️ Structure
```
lib/
 ├── models/
 │    ├── drink.dart
 │    ├── instruction.dart
 │    └── order.dart
 ├── services/
 │    └── order_manager.dart
 ├── reports/
 │    └── sales_report_service.dart
 ├── factories/
 │    ├── drink_factory.dart
 │    └── instruction_factory.dart
 ├── cli/
 │    └── cli_handler.dart
 └── main.dart
 ```

---

## 📌 Features
- Add new orders (customer name, drink, and instruction).
- Manage order lifecycle: **Pending → Completed / Cancelled**.
- Generate **Sales Reports**:
  - Total orders served.  
  - Count per drink.  
  - Top-selling drink.  
- Extensible system → new drinks/instructions can be added easily via factories.

---
## 🧩 Models

### `drink.dart`
Inside `drink.dart`, I created an **abstract class** called `Drink` that contains a getter `name, price`.  
Then I implemented three drink classes:  
- `Shai` → represents tea.  
- `TurkishCoffee` → represents Turkish coffee.  
- `HibiscusTea` → represents hibiscus tea.  

Each class overrides the `name, price` property to return its own value.  

Additionally, a **factory class** (`DrinkFactory`) was added under `factories/` to provide a centralized list of available drinks. This allows the CLI to fetch them dynamically without hardcoding.


### `instruction.dart`
Inside `instruction.dart`, I created an **abstract class** called `Instruction` that contains a getter `description`.  
Then I implemented three instruction classes:  
- `ExtraMint` → represents adding extra mint.  
- `LessSugar` → represents less sugar.  
- `TakeAway` → represents takeaway orders.  

Each class overrides the `description` property to return its own value.  

Additionally, a **factory class** (`InstructionFactory`) was added under `factories/` to provide a centralized list of available instructions. This allows the CLI to fetch them dynamically without hardcoding.  


### `order.dart`
- Represents an order with:
  - Auto-generated `id`.  
  - `customerName`, `drink`, `instruction`.  
  - `createdAt` timestamp.  
  - **OrderStatus enum**: `pending`, `completed`, `cancelled`.  
- Methods:
  - `markCompleted()`  
  - `cancel()`  
- Ensures order state is **encapsulated**.


---

## 🛠️ Services

### `order_manager.dart`
- Handles all order operations:
  - `addOrder()`  
  - `completeOrder()`  
  - `cancelOrder()`  
  - `getOrdersByStatus()` (pending, completed, cancelled)  
- Provides `allOrders` for reporting.
- Follows **Single Responsibility Principle** → manages orders only.

---

## 📊 Reports

### `sales_report_service.dart`
- Generates reports based on `allOrders`:  
  - Drink counts.  
  - Total orders.  
  - Top-selling drink.  
- Keeps reporting logic separate from order management.  

---

## 💻 CLI

### `cli_handler.dart`
- User interface for interacting with the app:
  - Add new order.  
  - View pending orders.  
  - Complete or cancel orders.  
  - View sales report.  
- Depends only on abstractions (factories, services), not concrete implementations.  

---

## 🎯 What I Applied from OOP
- **Abstraction**:  
  - Used abstract classes (`Drink`, `Instruction`) to define contracts.  

- **Inheritance**:  
  - Concrete classes (`Shai`, `TurkishCoffee`, `ExtraMint`, `LessSugar`, etc.) extend their respective base classes.  

- **Polymorphism**:  
  - Both drinks and instructions can be treated by their abstract type (`Drink` / `Instruction`) while returning their specific values.  
- **Encapsulation**: Order status controlled only via its methods. 

---

## 🎯 Applying SOLID Principles
- **S - Single Responsibility Principle (SRP):**  
  - Each class handles only one responsibility (e.g., representing a drink or an instruction , `OrderManager` handles only order logic).  
  - Factories are responsible for creating available items, not the CLI.  

- **O - Open/Closed Principle (OCP):**  
  - The system is open for extension: new drinks or instructions can be added without modifying existing logic.  

- **L - Liskov Substitution Principle (LSP):**  
  - Any concrete subclass (`Shai`, `TurkishCoffee`, `ExtraMint`, etc.) can replace its base type (`Drink` / `Instruction`) without breaking the app.  

- **I - Interface Segregation Principle (ISP):**  
  - Abstracts contain only what’s needed (`Drink` → `name`, `price`; `Instruction` → `description`) , avoiding unnecessary methods.  

- **D - Dependency Inversion Principle (DIP):**  
  - CLI depends on abstractions & factories, not hardcoded implementations.  

---
