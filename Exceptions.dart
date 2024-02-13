// 1. try, catch, finally
// 2. thowing an Exception
// 3. on keyword 
// 4. Custom exceptions

void main(){
  try{
    final int res = 100 ~/ 0;     // divide by zero
    // Truncating division is division where a fractional result is converted to an integer by rounding towards zero.
    
    print("Value of result is: ${res}");
  }
  // using "on" keyword to catch a specific exception
  on UnsupportedError{
      print("Ohh division by zero is not allowed!!!");
  }
  finally{
    print('This part will always execute!!');
  }
  try{
      dynamic x = true;
      print("Value inside x is: ${x++}");
  }catch(exception){
      print("Error Occurred!! $exception");   
  }

  try{
    makeDeposit(-5000);
  }catch(e){
    print("$e");
  }
}

// throwing a custom exception
void makeDeposit(int amount){
  if(amount < 0){
      throw  DepositException();
  }
}

// creating a custom exception class
class DepositException implements Exception{

  //int time = 10;
    @override
  String toString() {
    return "Amount deposited is less than zero!!!";
  }
}