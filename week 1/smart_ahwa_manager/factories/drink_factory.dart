import '../models/drink.dart';

class DrinkFactory {
  static List<Drink> getAvailableDrinks() {
    return [Shai(), TurkishCoffee(), HibiscusTea()];
  }
}
