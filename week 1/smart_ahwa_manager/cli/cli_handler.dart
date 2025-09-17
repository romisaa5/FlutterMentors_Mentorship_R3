import 'dart:io';
import '../factories/drink_factory.dart';
import '../factories/instruction_factory.dart';
import '../models/order.dart';
import '../reports/sales_report_service.dart';
import '../services/order_manager.dart';

class CLIHandler {
  final OrderManager orderManager;

  CLIHandler(this.orderManager);

  void start() {
    while (true) {
      print("\n=== Smart Ahwa Manager ===");
      print("1. Add Order");
      print("2. View Pending Orders");
      print("3. Complete Order");
      print("4. Cancel Order");
      print("5. View Sales Report");
      print("6. Exit");

      stdout.write("Choose an option: ");
      final choice = stdin.readLineSync();

      switch (choice) {
        case '1':
          _addOrderFlow();
          break;
        case '2':
          _viewOrdersByStatus(OrderStatus.pending);
          break;
        case '3':
          _completeOrderFlow();
          break;
        case '4':
          _cancelOrderFlow();
          break;
        case '5':
          _viewSalesReport();
          break;
        case '6':
          print("Goodbye!");
          return;
        default:
          print("Invalid choice. Try again.");
      }
    }
  }

  void _addOrderFlow() {
    stdout.write("Enter customer name: ");
    final name = stdin.readLineSync() ?? "Unknown";

    final drinks = DrinkFactory.getAvailableDrinks();
    for (var i = 0; i < drinks.length; i++) {
      print("${i + 1}. ${drinks[i].name}");
    }
    stdout.write("Choose a drink: ");
    final drinkIndex = int.parse(stdin.readLineSync() ?? "1") - 1;
    final drink = drinks[drinkIndex];

    final instructions = InstructionFactory.getAvailableInstructions();
    for (var i = 0; i < instructions.length; i++) {
      print("${i + 1}. ${instructions[i].description}");
    }
    stdout.write("Choose an instruction: ");
    final instIndex = int.parse(stdin.readLineSync() ?? "1") - 1;
    final instruction = instructions[instIndex];

    final order = Order(name, drink, instruction);
    orderManager.addOrder(order);
    print("✅ Order Added: $order");
  }

  void _viewOrdersByStatus(OrderStatus status) {
    final orders = orderManager.getOrdersByStatus(status);
    final statusName = status.name[0].toUpperCase() + status.name.substring(1);
    if (orders.isEmpty) {
      print("No $statusName orders.");
    } else {
      print("$statusName Orders:");
      for (var o in orders) {
        print(o);
      }
    }
  }

  void _completeOrderFlow() {
    stdout.write("Enter Order ID to complete: ");
    final id = int.tryParse(stdin.readLineSync() ?? "");
    if (id == null) return;
    try {
      orderManager.completeOrder(id);
      print("Order #$id marked as completed!");
    } catch (e) {
      print(e);
    }
  }

  void _cancelOrderFlow() {
    stdout.write("Enter Order ID to cancel: ");
    final id = int.tryParse(stdin.readLineSync() ?? "");
    if (id == null) return;
    try {
      orderManager.cancelOrder(id);
      print("Order #$id has been cancelled!");
    } catch (e) {
      print(e);
    }
  }

  void _viewSalesReport() {
    final reportService = SalesReportService(orderManager.allOrders);
    final report = reportService.generateReport();

    if ((report["totalOrders"] as int) == 0) {
      print("No sales yet.");
      return;
    }

    print("=== Sales Report ===");
    print("Total Orders Served: ${report["totalOrders"]}");

    print("\nDrink Counts:");
    (report["drinkCounts"] as Map<String, int>).forEach((drink, count) {
      print(" - $drink: $count sold");
    });

    print("\nTop-Selling Drink: ${report["topSellingDrink"]} "
        "(${report["topDrinkCount"]} sold)");

 
    _viewOrdersByStatus(OrderStatus.pending);
    _viewOrdersByStatus(OrderStatus.cancelled);
  }
}
