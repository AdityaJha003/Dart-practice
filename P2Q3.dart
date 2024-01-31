// Create the following set variables and perform the following operations:
//     var a = <int>{10,11,12,13,14,15};
//     var b = <int>{12,18,29,43};
//     var c = <int>{2,5,10,11,32};
//     a. Union of a, b and c
//     b. Intersection of a and b
//     c. Difference of b and c


void main() {
  // Create set variables
  var a = {10, 11, 12, 13, 14, 15};
  var b = {12, 18, 29, 43};
  var c = {2, 5, 10, 11, 32};

  // Union of a, b, and c
  var unionResult = a.union(b).union(c);
  print('Union of a, b, and c: $unionResult');

  // Intersection of a and b
  var intersectionResult = a.intersection(b);
  print('Intersection of a and b: $intersectionResult');

  // Difference of b and c
  var differenceResult = b.difference(c);
  print('Difference of b and c: $differenceResult');
}
