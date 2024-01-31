// Ask the user for a string and print out whether this string is a palindrome or not.

import 'dart:io';

void main() {
  // Ask the user for a string
  print("Enter a string:");
  String input = stdin.readLineSync()!;

  // Check if the entered string is a palindrome
  if (isPalindrome(input)) {
    print("$input is a palindrome.");
  } else {
    print("$input is not a palindrome.");
  }
}

bool isPalindrome(String str) {
  // Remove spaces and convert to lowercase for case-insensitive comparison
  String cleanStr = str.replaceAll(' ', '').toLowerCase();

  // Compare the original string with its reverse
  return cleanStr == cleanStr.split('').reversed.join('');
}

