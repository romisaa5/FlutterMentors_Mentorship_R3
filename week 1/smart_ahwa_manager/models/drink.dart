abstract class Drink {
  String get name;
  double get price;

  @override
  String toString() => "$name - ${price.toStringAsFixed(2)} EGP";
}

class Shai extends Drink {
  @override
  String get name => "Shai (Tea)";

  @override
  double get price => 10.0;
}

class TurkishCoffee extends Drink {
  @override
  String get name => "Turkish Coffee";

  @override
  double get price => 15.0;
}

class HibiscusTea extends Drink {
  @override
  String get name => "Hibiscus Tea";

  @override
  double get price => 12.0;
}
