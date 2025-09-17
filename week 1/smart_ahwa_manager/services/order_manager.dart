import '../models/order.dart';

abstract class IOrderRepository {
  void addOrder(Order order);
  void completeOrder(int orderId);
  void cancelOrder(int orderId);
  List<Order> getOrdersByStatus(OrderStatus status);
  List<Order> get allOrders;
}

class OrderManager implements IOrderRepository {
  final List<Order> _orders = [];

  @override
  void addOrder(Order order) => _orders.add(order);

  @override
  void completeOrder(int orderId) {
    var order = _findOrder(orderId);
    order.markCompleted();
  }

  @override
  void cancelOrder(int orderId) {
    var order = _findOrder(orderId);
    order.cancel();
  }

  @override
  List<Order> getOrdersByStatus(OrderStatus status) =>
      _orders.where((o) => o.status == status).toList();

  @override
  List<Order> get allOrders => List.unmodifiable(_orders);


  Order _findOrder(int orderId) {
    return _orders.firstWhere(
      (o) => o.id == orderId,
      orElse: () => throw Exception("Order not found"),
    );
  }
}
