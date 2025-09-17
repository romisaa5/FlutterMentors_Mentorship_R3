import 'drink.dart';
import 'instruction.dart';

enum OrderStatus { pending, completed, cancelled }

class Order {
  static int _counter = 0;
  final int id;
  final String customerName;
  final Drink drink;
  final Instruction instruction;
  final DateTime createdAt;
  OrderStatus _status = OrderStatus.pending;

  Order(this.customerName, this.drink, this.instruction)
      : id = ++_counter,
        createdAt = DateTime.now();

  void markCompleted() => _status = OrderStatus.completed;
  void cancel() => _status = OrderStatus.cancelled;

  OrderStatus get status => _status;

  @override
  String toString() {
    return "Order #$id | Customer: $customerName | "
        "Drink: ${drink.name} | Instruction: ${instruction.description} | Price: ${drink.price} | "
        "Status: ${_status.name}";
  }
}
