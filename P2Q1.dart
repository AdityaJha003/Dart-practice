// Create a list variable and store 6 three digit integer values in it. Create another list which contains reverse elements of this list.

void main() {
  // Create a list of six three-digit integers
  List<int> originalList = [123, 456, 789, 321, 654, 987];

  // Create a new list with reversed elements
  List<int> reversedList = reverseElements(originalList);

  // Print the original and reversed lists
  print('Original List: $originalList');
  print('Reversed List: $reversedList');
}

List<int> reverseElements(List<int> inputList) {
  // Create a new list with reversed elements
  List<int> reversedList = inputList.map((number) => reverseInteger(number)).toList();
  return reversedList;
}

int reverseInteger(int number) {
  // Reverse the digits of a three-digit integer
  int digit1 = number % 10;
  int digit2 = (number ~/ 10) % 10;
  int digit3 = number ~/ 100;

  return digit1 * 100 + digit2 * 10 + digit3;
}
