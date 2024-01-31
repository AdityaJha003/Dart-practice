// Use the following List functions in the above list:
//     First
//     isEmpty
//     isNotEmpty
//     Length
//     Last
//     Reverse
//     Single
//     add()    //   list.add(<element>);
//     addAll()     //list.addAll([<element list separated by comma>]);
//     insert()     //list.insert(<index>,<value>); 
//     insertAll()   //list_names.insertAll(<index>, [<list_of_value>]);
//     replaceRange()    //list_names.replaceRange(int start_val, int end_val, [<list_of_value>]);
//     remove()   //list_names.remove(value)
//     removeAll()   //list_name.removeAt(int index)
//     removeLast()  //list_names.removeLast() 
//     removeRange()   //list_names. removeRange(int start, int end);

void main() {
  // Create an empty list
  List<int> originalList = [];

  // Add elements to the list
  originalList.add(123);
  originalList.addAll([456, 789, 321, 654, 987]);

  // Print the original list
  print('Original List: $originalList');

  // Use List functions
  print('First Element: ${originalList.first}');
  print('Is Empty?: ${originalList.isEmpty}');
  print('Is Not Empty?: ${originalList.isNotEmpty}');
  print('Length: ${originalList.length}');
  print('Last Element: ${originalList.last}');
  print('Reversed List: ${originalList.reversed.toList()}');
  
  // Single function (throws an error if there is not exactly one element)
  try {
    int singleElement = originalList.single;
    print('Single Element: $singleElement');
  } catch (e) {
    print('Error: $e');
  }

  // Insert an element at a specific index
  originalList.insert(2, 555);

  // Insert multiple elements at a specific index
  originalList.insertAll(4, [777, 888]);

  // Replace a range of elements
  originalList.replaceRange(1, 3, [999, 111]);

  // Remove an element
  originalList.remove(123);

  // Remove all occurrences of an element
  // originalList.removeAll([555, 777]);

  // Remove the last element
  originalList.removeLast();

  // Remove elements in a specific range
  originalList.removeRange(2, 4);

  // Print the modified list
  print('Modified List: $originalList');
}
