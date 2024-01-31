// Write a program that asks the user how many Fibonnaci numbers to generate and then generates them. 


import 'dart:io';

void main() {
  // Ask the user for the number of Fibonacci numbers to generate
  print("Enter the number of Fibonacci numbers to generate:");
  
  // Read user input
  String? userInput = stdin.readLineSync();

  // Validate and parse the user input
  int numberOfFibonacci;
  try {
    numberOfFibonacci = int.parse(userInput!);
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  // Generate and print the Fibonacci sequence
  List<int> fibonacciSequence = generateFibonacci(numberOfFibonacci);
  
  print("Generated Fibonacci sequence:");
  print(fibonacciSequence);
}

List<int> generateFibonacci(int n) {
  List<int> fibonacciSequence = [];

  for (int i = 0; i < n; i++) {
    if (i <= 1) {
      fibonacciSequence.add(i);
    } else {
      int nextFibonacci = fibonacciSequence[i - 1] + fibonacciSequence[i - 2];
      fibonacciSequence.add(nextFibonacci);
    }
  }

  return fibonacciSequence;
}
