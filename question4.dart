// Question 4: Inheritance & Polymorphism (Difficulty: 4/5) ⭐⭐⭐⭐

abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  // Abstract methods - must be implemented by child classes
  void start();
  void stop();

  // Concrete method - shared by all vehicles
  void displayInfo() {
    print("Vehicle Info: $year $brand $model");
  }

  // Calculate how old the vehicle is
  int calculateAge() {
    return 2026 - year;
  }
}

// Car class - extends Vehicle
class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, String model, int year, this.numberOfDoors)
      : super(brand, model, year);

  @override
  void start() {
    print("Starting the car engine...");
  }

  @override
  void stop() {
    print("Stopping the car engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model ($numberOfDoors doors)");
  }
}

// Motorcycle class - extends Vehicle
class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle(String brand, String model, int year, this.hasWindshield)
      : super(brand, model, year);

  @override
  void start() {
    print("Starting the motorcycle engine...");
  }

  @override
  void stop() {
    print("Stopping the motorcycle engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)");
  }
}

void main() {
  // Create one Car and one Motorcycle
  Car car = Car("Toyota", "Camry", 2020, 4);
  Motorcycle motorcycle = Motorcycle("Honda", "CBR", 2021, true);

  // Create a list of vehicles - this is polymorphism
  // Both Car and Motorcycle are stored as Vehicle type
  List<Vehicle> vehicles = [car, motorcycle];

  // Loop through and call methods on each vehicle
  for (Vehicle vehicle in vehicles) {
    vehicle.displayInfo();
    vehicle.start();
    vehicle.stop();
    print(""); // empty line between vehicles
  }

  // Print age of each vehicle
  print("Car age: ${car.calculateAge()} years");
  print("Motorcycle age: ${motorcycle.calculateAge()} years");
}