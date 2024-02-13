class BankingException implements Exception{
  final String message;

  BankingException(this.message);

  @override
  String toString() => 'BankingException: $message';
}

class BankAccount{
  double balance;

  BankAccount(this.balance);

  void deposit(double amount){
    if(amount < 0){
      throw BankingException("Cannot deposit a negative amount.");
    }
    balance += amount;
    print("Deposit successful. New balance : ${balance.toStringAsFixed(2)}");
  }

  void withdraw(double amount){
    if(amount > balance){
      throw BankingException("Insufficient funds");
    }
    if(amount < 0){
      throw BankingException("Cannot withdraw a negative amount");
    }
    balance -= amount;
    print("Withdrawal successful. New balance: ${balance.toStringAsFixed(2)}");
  }
}

void main(){
  BankAccount account = BankAccount(2000.0);

  try{
    account.deposit(700.0);
    account.withdraw(250.0);
    account.deposit(-130.0);
  }
  catch(e){
    print("Error: ${e.toString()}");
  }
}