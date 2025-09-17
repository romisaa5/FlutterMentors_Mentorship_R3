import '../models/instruction.dart';

class InstructionFactory {
  static List<Instruction> getAvailableInstructions() {
    return [ExtraMint(), LessSugar(), TakeAway()];
  }
}
