// Write a program that takes a list and returns a new list that contains all the elements of the first list minus all the duplicates.

void main() {
  // Example usage
  List<int> originalList = [1, 2, 2, 3, 4, 4, 5];
  List<int> uniqueList = removeDuplicates(originalList);

  print("Original List: $originalList");
  print("List without Duplicates: $uniqueList");
}

List<T> removeDuplicates<T>(List<T> inputList) {
  // Create a Set to store unique elements
  Set<T> uniqueSet = {};

  // Iterate through the original list and add elements to the set
  for (T element in inputList) {
    uniqueSet.add(element);
  }

  // Convert the set back to a list to maintain order
  List<T> uniqueList = uniqueSet.toList();

  return uniqueList;
}
