// Collections in Dart
/**
List: an ordered collection of objects with a length (also called an array)
Set: an unordered collection of unique objects
Map: an unordered collection of key-value pairs
Queue: an ordered collection that can add/remove objects on both ends
*/
import 'dart:collection';

void main() {
  // Initialising a list
  List list = [];
  // List list2 = {};
  // print(list2.runtimeType);

  // Adding elements in the list
  list.add(1);
  list.add(8);
  list.add(27);
  list.add(64);
  list.add(125);

  // var list = [1, 2, 3];
  var list2 = [0, ...list];
  print('New list: $list2');

  // Printing elements of the list
  for (int i = 0; i < list.length; i++) {
    print("The element is: " + list[i].toString());
  }

  // Printing the whole list
  print("The list is: " + list.toString());

  // using for-each loop
  for (int e in list) print('The element is: $e');

  list.forEach((element) {
    print('element value is: $element');
  });

  List<int> l = [10, 20, 30, 40];
  print(l.runtimeType);
  print(l.length);
  print(l[3]);
  l.add(50);
  l.addAll([60, 70, 80]);
  print(l.first);
  print(l.isEmpty);
  print(l.last);
  l.contains(80);
  print(l.elementAt(5));
  print(l.lastIndexOf(60));

  for (int x in l) {
    print(x);
  }

  // ====================== SETS =====================
  // Initialising a set
  Set s = {};

  // Adding elements to the set
  s.add("Red");
  s.add("Blue");
  s.add("Green");
  s.add("Red"); // Adding Red again to the set
  s.add("Black");

  // final val1 = 'Foo';
  // var val2 = 'foo';

  Set set = {'Foo', 'foo', 'Bar', 'Buz'};

  print('Values inside set are: $set');

  // Printing the elements of set
  for (var ele in s) {
    print("The element is: " + ele);
  }

  Set set1 = <int>{50, 500, 400, 250, 80, 70};
  Set set2 = <int>{10, 20, 30, 50, 80, 90};
  Set set3 = <int>{60, 70, 100, 120, 130, 200};

  print(set1.union(set2));
  print(set2.intersection(set3));
  print(set1.difference(set3));

  // ============================ MAP ==========================

  // Initialising a map
  Map<dynamic, dynamic> mp = Map();
  // Adding elements to the set
  mp[1] = 1;
  mp[2] = 4;
  mp[3] = 9;
  mp[4] = 16;
  mp[5] = 25;

  // var a = {1, 2, 4};

  // Printing the keys of map
  print("The keys of the map are: " + mp.keys.toString());

  // Printing the values of map
  print("The values of the map are: " + mp.values.toString());

  // Printing the whole map
  print("The map is: " + mp.toString());

  // Creating a Map with keys of type String and values of type int
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Carol': 28,
  };

  // Adding a new entry to the map
  ages['David'] = 22;

  // Printing the entries in the map
  print(
      "Map entries: $ages"); // Prints: Map entries: {Alice: 25, Bob: 30, Carol: 28, David: 22}

  // Accessing the value associated with a key
  int aliceAge = ages['Alice']!;
  print("Alice's age: $aliceAge"); // Prints: Alice's age: 25

  // Checking if the map contains a specific key
  bool containsCarol = ages.containsKey('Carol');
  print(
      "Does the map contain Carol? $containsCarol"); // Prints: Does the map contain Carol? true

  // Removing an entry from the map
  ages.remove('Bob');
  print(
      "Updated map: $ages"); // Prints: Updated map: {Alice: 25, Carol: 28, David: 22}

  // Getting the number of entries in the map
  print(
      "Number of entries in the map: ${ages.length}"); // Prints: Number of entries in the map: 3

  // =========================== Queue ===========================

  // Initialising a queue
  Queue q = new Queue();
  // Adding elements to the queue

  // Adding elements from the front
  q.addFirst("Mumbai");
  q.addFirst("Delhi");

  // Adding elements from the back
  q.addLast("Jaipur");
  q.addLast("Gurgaon");

  // Adding elements from the front
  q.addFirst("Hyderabad");
  q.addFirst("Chennai");

  // Printing the elements of a queue
  for (var ele in q) {
    print("The element is: " + ele);
  }
}