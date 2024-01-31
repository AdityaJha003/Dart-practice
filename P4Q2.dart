// Create a function that accepts a required string, a named integer with a default value, and
//  an optional list of integers. The function should check if the length of the string is greater than the named integer and, 
// if the optional list is provided, ensure that all elements are even. 
// If the conditions are met, return true; otherwise, return false.


bool checkConditions({
  required String requiredString,
  int namedInteger = 0,
  List<int>? optionalIntegers,
}) {
  // Check if the length of the string is greater than the named integer
  bool condition1 = requiredString.length > namedInteger;

  // Check if the optional list is provided and all elements are even
  bool condition2 = optionalIntegers?.every((element) => element.isEven) ?? true;

  // Return true if both conditions are met, otherwise return false
  return condition1 && condition2;
}

void main() {
  // Example usage
  bool result1 = checkConditions(requiredString: "abc", namedInteger: 2, optionalIntegers: [2, 4, 6]);
  print('Result 1: $result1'); 

  bool result2 = checkConditions(requiredString: "abc", namedInteger: 4, optionalIntegers: [1, 2, 3]);
  print('Result 2: $result2'); 
}
