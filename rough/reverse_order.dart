// Write a program that asks the user for a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.

import 'dart:io';

void main() {
  // Ask the user for a long string
  print("Enter a long string containing multiple words:");
  
  // Read user input
  String? userInput = stdin.readLineSync();

  // Validate user input
  if (userInput == null || userInput.isEmpty) {
    print("Invalid input. Please enter a non-empty string.");
    return;
  }

  // Print the string with words in reverse order
  String reversedString = reverseWordsOrder(userInput);
  print("Original String: $userInput");
  print("String with Words in Reverse Order: $reversedString");
}

String reverseWordsOrder(String input) {
  // Split the input string into a list of words
  List<String> words = input.split(' ');

  // Reverse the order of the words
  List<String> reversedWords = words.reversed.toList();

  // Join the reversed words back into a single string
  String reversedString = reversedWords.join(' ');

  return reversedString;
}
