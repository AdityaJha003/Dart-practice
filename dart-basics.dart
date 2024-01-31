import 'dart:io';
  void main(){
    print("Hello World!");

    // Variables declaration

    int x = 100;
    print(x);

    print("value of x is : $x");  // String interpolation


    int y = 200;
    print("sum of x and y is : ${x+y}");

    int? value;    // ? is used to declare nullable value
    print(value);


    String name = "Rahul";
    String address = '''
      NorthCap university, sector 23A
      Gurugram
      pincode: 122017
    ''';

    print(y.runtimeType);

    var z = 100.34;   // type inferencing

    //z = true;     cannot change the type of variable
    print(z.runtimeType);


    dynamic c;

    c = 'John';   // type inferencing
    print(c.runtimeType);

    c = 100;   // type can be changed
    print(c.runtimeType);


    // name.substring(start)
    print('enter your name: ');
    String? val = stdin.readLineSync();

    print('Name = $val');

    print('enter your roll no.: ');

    String? val2 = stdin.readLineSync();
    int roll = int.parse(val2.toString());

    print('Roll No = $roll');
  }