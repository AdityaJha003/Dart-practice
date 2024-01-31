// Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.


import 'dart:io';
import 'dart:math';

void main() {
  // Generate a random number between 1 and 100
  int randomNumber = Random().nextInt(100) + 1;

  // Initialize variables
  int userGuess;
  bool guessedCorrectly = false;

  print("Welcome to the Number Guessing Game!");

  // Keep prompting the user until they guess the correct number
  while (!guessedCorrectly) {
    // Ask the user to guess the number
    print("Enter your guess (between 1 and 100):");
    
    // Read user input
    String? userInput = stdin.readLineSync();
    
    // Validate and parse the user input
    try {
      userGuess = int.parse(userInput!);
    } catch (e) {
      print("Invalid input. Please enter a valid number.");
      continue; // Restart the loop
    }

    // Check if the guess is too low, too high, or correct
    if (userGuess < 1 || userGuess > 100) {
      print("Please enter a number between 1 and 100.");
    } else if (userGuess < randomNumber) {
      print("Too low! Try again.");
    } else if (userGuess > randomNumber) {
      print("Too high! Try again.");
    } else {
      guessedCorrectly = true;
      print("Congratulations! You guessed the correct number: $randomNumber");
    }
  }
}
