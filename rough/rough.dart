void main(List<String> args) {
   Map<String, Function> result = math(40); 

  print(result["delhi"]!(
      10, 20)); 

  print(result["mumbai"]!(10, 20));
  // print(result["Hyderabad"]!(10, 20));
  print(result["Bangalore"]!(10, 20));
}

Map<String, Function> math(int a) {
  int b = 30;

  Function add = (int x, int y) {
    return x + y + a + b;
  };

  Function sub = (int x, int y) {
    return x - y - a - b;
  };

  Function mul = (int x, int y) {
    return x * y * a * b;
  };

  Function div = (int x, int y) {
    return (x / y)/a;
  };

  return {"delhi": add, "mumbai": sub, "Bangalore": mul, "Hyderabad": div};
}