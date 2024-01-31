// Closures
// a function object that has access to variables in its lexical scope, 
// even when the function is used outside of its original scope.
void main(List<String> args) {
  Function sumFunction = createFunction();

  sumFunction(3);
}

Function createFunction() {
  int a = 7;

  void specialPrint(int x) {
    print('sum=$x');
  }

  void sum(int x) {
    x += a;
    specialPrint(x);
  }

  return sum;
}