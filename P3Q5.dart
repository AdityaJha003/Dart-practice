// Create a program that simulates a library catalog system using a map. Allow users to add books, check out books, and view the current status of books.

import 'dart:io';

main() {
  Map<String, String> name = {
    'harry potter': 'booked',
    'diary of a wimpy kid': 'unbooked',
    'to kill a mocking bird': 'unbooked'
  };

  print('enter the name of the book');
  var book = stdin.readLineSync();
  print(book);

  if (name.containsKey(book)) {
    print(name[book]);
  } else {
    print('book not found');
  }
  print('do you want to edit the names and status of the book?');
  print('press y to edit, n to exit');

  var decision = stdin.readLineSync();
  if (decision == 'y') {
    print('enter the name of the book');

    var editBook = stdin.readLineSync()!;

    if (name.containsKey(editBook)) {
      print('enter the status of the book');

      var status = stdin.readLineSync()!;
      name[editBook] = status;

      print('book status successfully updated');
      print(name);
    } else {
      print('the book entered does not exist');
    }
  } else if (decision == 'n') {
    print('thank you for visiting');
  } else {
    print('invalid input');
  }
}