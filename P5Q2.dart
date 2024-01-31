// Write a Dart function named factorialFunction that takes an integer n as an argument and returns a closure function. The closure function, when called with an integer x, should compute the factorial of x using the value of n as the upper limit for recursion.

import 'dart:io';

Function(int) factorialFunction(int b) {
  int factorial(int a) {
    if (a <= 1 || b <= 0) {
      return 1;
    } else {
      b = b-1;
      return a * factorial(a - 1);
    }
  }

  return factorial;
}

void main() {
  print("Enter the value of a for number which needs factorial:");
  int a = int.parse(stdin.readLineSync() ?? '0');

  print("Enter the value of b for upper limit");
  int b = int.parse(stdin.readLineSync() ?? '0');

  var calculateFactorial = factorialFunction(b);

  int result = calculateFactorial(a);
  print("Factorial of $a with an upper limit of $b: $result");
}
