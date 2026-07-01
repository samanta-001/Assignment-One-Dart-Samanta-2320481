// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐

// 1. Mixin Payable - handles salary and payment
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    print("Payment processed: $amount");
  }
}

// 2. Mixin Reportable - handles report generation
mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Report: Monthly report for $employeeName in $department department";
  }
}

// 3. Abstract Employee class
abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

// 4. Manager class - uses both Payable and Reportable mixins
class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager(String name, String id, String department, this.teamSize)
      : super(name, id, department);

  @override
  String getJobTitle() {
    return "Manager";
  }

  @override
  double getBaseSalary() {
    return 8000.0;
  }

  @override
  void displayInfo() {
    print("Manager: $name (ID: $id, Department: $department, Team Size: $teamSize)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");

    double salary = calculateSalary(getBaseSalary(), 1000.0);
    print("Calculated Salary: $salary");
    processPayment(salary);
    print(generateReport(name, department));
  }
}

// 5. Developer class - uses only Payable mixin
class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer(String name, String id, String department, this.programmingLanguage)
      : super(name, id, department);

  @override
  String getJobTitle() {
    return "Senior Developer";
  }

  @override
  double getBaseSalary() {
    return 6000.0;
  }

  @override
  void displayInfo() {
    print("Developer: $name (ID: $id, Department: $department, Language: $programmingLanguage)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");

    double salary = calculateSalary(getBaseSalary(), 500.0);
    print("Calculated Salary: $salary");
    processPayment(salary);
  }
}

void main() {
  // Create Manager
  Manager manager = Manager("John Smith", "M001", "IT", 5);

  // Create Developer
  Developer developer = Developer("Alice Johnson", "D001", "IT", "Dart");

  // Display Manager info with salary and report
  manager.displayInfo();

  print(""); // empty line between employees

  // Display Developer info with salary
  developer.displayInfo();
}