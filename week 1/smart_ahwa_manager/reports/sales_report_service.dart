import '../models/order.dart';

class SalesReportService {
  final List<Order> orders;
  SalesReportService(this.orders);

  Map<String, dynamic> generateReport() {
    final completedOrders = _filterCompletedOrders();
    final drinkCounts = _calculateDrinkCounts(completedOrders);
    final topDrinkData = _getTopSellingDrink(drinkCounts);

    return {
      "drinkCounts": drinkCounts,
      "totalOrders": completedOrders.length,
      "topSellingDrink": topDrinkData['name'] ?? "None",
      "topDrinkCount": topDrinkData['count'] ?? 0,
    };
  }

  List<Order> _filterCompletedOrders() {
    return orders.where((o) => o.status == OrderStatus.completed).toList();
  }

  Map<String, int> _calculateDrinkCounts(List<Order> completedOrders) {
    final counts = <String, int>{};
    for (var o in completedOrders) {
      counts[o.drink.name] = (counts[o.drink.name] ?? 0) + 1;
    }
    return counts;
  }

  Map<String, dynamic> _getTopSellingDrink(Map<String, int> drinkCounts) {
    String? topDrink;
    int maxCount = 0;
    drinkCounts.forEach((drink, count) {
      if (count > maxCount) {
        maxCount = count;
        topDrink = drink;
      }
    });
    return {"name": topDrink, "count": maxCount};
  }
}
