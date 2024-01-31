// Develop a Dart function named getMathFunctions that returns a map of mathematical functions. The keys of the map should be strings representing mathematical operations ("add", "subtract", "multiply", "divide"), and the values should be closure functions that perform the corresponding operations on two integers.


Map<String, Function> getMathFunctions() {

  Map<String, Function> mathFunctions = {
    "add": (int a, int b) => a + b,
    "subtract": (int a, int b) => a - b,
    "multiply": (int a, int b) => a * b,
    "divide": (int a, int b) {
      if (b != 0) {
        return a / b;
      } else {
        throw ArgumentError("Division by zero is not allowed.");
      }
    }
  };

  return mathFunctions;
}

void main() {
 
  Map<String, Function> mathFunctions = getMathFunctions();


  int a = 10;
  int b = 5;

  mathFunctions.forEach((operation, function) {
    try {
      print("$operation: ${function(a, b)}");
    } catch (e) {
      print("$operation: ${e.toString()}");
    }
  });
}
