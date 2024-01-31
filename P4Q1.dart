// Implement a function that takes a required integer, a named integer argument with a default value, 
// and a variable number of positional integers. 
// The function should return the product of the required integer and the sum of the named and positional integers.

int calculateProduct({
  required int requiredInteger,
  int namedInteger = 0,
  List<int> positionalIntegers = const [],
}) {
  // Calculate the sum of named and positional integers
  int sum = namedInteger + (positionalIntegers.isNotEmpty ? positionalIntegers.reduce((a, b) => a + b) : 0);

  // Return the product of the required integer and the calculated sum
  return requiredInteger * sum;
}

void main() {
  // Example usage
  int result = calculateProduct(requiredInteger: 5, namedInteger: 3, positionalIntegers: [1, 2, 4]);
  print('Result: $result');
}
