// Write a function that checks if a given Set is a subset of another Set.

bool isSubset(Set<dynamic> subset, Set<dynamic> superset) {
  return subset.every((element) => superset.contains(element));
}

void main() {
  // Example usage
  Set<int> set1 = {1, 2, 3, 4, 5};
  Set<int> set2 = {2, 4};

  bool result = isSubset(set2, set1);

  if (result) {
    print('$set2 is a subset of $set1');
  } else {
    print('$set2 is not a subset of $set1');
  }
}
