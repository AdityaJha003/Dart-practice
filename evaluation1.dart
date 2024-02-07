import 'dart:math' as Math;
import 'dart:io';

class MathUtils {
  static double squareRoot(double number) {
    return Math.sqrt(number);
  }

  static int factorial(int number) {
    if (number == 0 || number == 1) {
      return 1;
    } 
    
    else {
      return number * factorial(number - 1);
    }
  }

  static num power(int base, int exponent) {

      return Math.pow(base, exponent);
  }
}

void main() {
  print("Enter the number to calculate the square root:");
  String? userInput = stdin.readLineSync();
  double number = double.parse(userInput!);



  // double number = double.parse(stdin.readLineSync()!);
  print("Square root of $number is : ${MathUtils.squareRoot(number)}");

  print("Enter the number to calculate the factorial:");
  userInput = stdin.readLineSync();
  int number2 = int.parse(userInput!);
  print("Factorial of $number2 is : ${MathUtils.factorial(number2)}");



  print("Enter the number for which you need power of:");
  userInput = stdin.readLineSync();
  int base = int.parse(userInput!);
  print("Enter the exponent:");
  userInput = stdin.readLineSync();
  int exponent = int.parse(userInput!);
  print("Power of $base raised to $exponent is : ${MathUtils.power(base, exponent)}");
}
