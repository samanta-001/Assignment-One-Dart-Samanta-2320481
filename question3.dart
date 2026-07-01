// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐
class BankAccount {
  // 1. Properties
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  // 2. Constructor - sets balance to 0.0 by default
  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;

  // 3. Deposit - adds amount to balance
  void deposit(double amount) {
    balance += amount;
  }

  // 4. Withdraw - checks funds first, subtracts if enough
  void withdraw(double amount) {
    if (amount > balance) {
      print("Insufficient funds for withdrawal of $amount from account $accountNumber");
    } else {
      balance -= amount;
    }
  }

  // 5. getBalance - returns current balance
  double getBalance() {
    return balance;
  }

  // 6. displayAccountInfo - prints account details
  void displayAccountInfo() {
    print("Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance");
  }
}

void main() {
  // Create 3 bank accounts
  BankAccount account1 = BankAccount("12345", "Alice", "Savings");
  BankAccount account2 = BankAccount("67890", "Bob", "Checking");
  BankAccount account3 = BankAccount("11111", "Charlie", "Savings");

  // Deposit money into each account
  account1.deposit(1000.0);
  account2.deposit(500.0);
  account3.deposit(2000.0);

  // Withdraw money from account 1 and 2
  account1.withdraw(200.0);
  account2.withdraw(100.0);

  // Display all account info
  account1.displayAccountInfo();
  account2.displayAccountInfo();
  account3.displayAccountInfo();

  // Demonstrate insufficient funds - withdraw 1000 from Bob (only has 400)
  account2.withdraw(1000.0);
}