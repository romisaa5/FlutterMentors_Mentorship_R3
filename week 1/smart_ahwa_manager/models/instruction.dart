abstract class Instruction {
  String get description;
}

class ExtraMint extends Instruction {
  @override
  String get description => "Extra Mint, ya rais";
}

class LessSugar extends Instruction {
  @override
  String get description => "Less Sugar";
}

class TakeAway extends Instruction {
  @override
  String get description => "Take Away";
}
