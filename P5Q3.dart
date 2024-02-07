// Write a Dart function named filterList that takes a list of integers and a closure function as arguments. The closure function should determine whether an integer should be included in the filtered list. The filterList function should return a new list containing only the integers that satisfy the condition specified by the closure function.


List<int> filterList(List<int> list, bool Function(int) condition) {
  List<int> filteredList = [];
  for (int num in list) {
    if (condition(num)) {
      filteredList.add(num);
    }
  }
  return filteredList;
}

void main() {
  
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  bool Function(int) isEven = (int number) => number % 2 == 0;

  List<int> evenNumbers = filterList(numbers, isEven);
  print("Even Numbers: $evenNumbers");

  bool Function(int) greaterThan5 = (int number) => number > 5;

  List<int> numbersGreaterThan5 = filterList(numbers, greaterThan5);
  print("Numbers Greater Than 5: $numbersGreaterThan5");
}

