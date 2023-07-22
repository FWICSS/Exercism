import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    int sum = 0;
		int power = number.length;
    for (int i = 0; i < number.length; i++) {
      if (number[i] == '0') {
        continue;
      }
      sum += int.parse(number[i])^power;
    }
    return sum == int.parse(number);

  }
}

void main() {
  final armstrongNumbers = ArmstrongNumbers();
  print(armstrongNumbers.isArmstrongNumber('0'));
}
