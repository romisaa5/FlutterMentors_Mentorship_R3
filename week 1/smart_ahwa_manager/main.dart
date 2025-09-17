import 'services/order_manager.dart';
import 'cli/cli_handler.dart';

void main() {
  final manager = OrderManager();
  final cli = CLIHandler(manager);
  cli.start();
}
