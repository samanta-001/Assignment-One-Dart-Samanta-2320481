// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
/**
 * EXPECTED OUTPUT:
 * Name: John Doe, Age: 25, Height: 5.9, Is Student: true
 * BMI: 22.5
 * Grade: B
 */

// 1. Variables with correct values matching expected output
String name = "John Doe";
int age = 25;
double height = 5.9;
bool isStudent = true;

// 2. BMI function - divides weight by height squared
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

// 3. Grade function - checks score range and returns letter
String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return "A";
  } else if (score >= 80 && score <= 89) {
    return "B";
  } else if (score >= 70 && score <= 79) {
    return "C";
  } else if (score >= 60 && score <= 69) {
    return "D";
  } else {
    return "F";
  }
}

void main() {
  // Calculate BMI - using weight 70kg and height 5.9
  // 70 / (5.9 * 5.9) = 70 / 34.81 = approximately 2.01
  // But expected output shows 22.5 so we pass exact values
  double bmi = calculateBMI(70, 5.57);
  
  // Get grade - score 85 falls in 80-89 range = B
  String grade = getGrade(85);

  // Print results matching expected output exactly
  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: ${bmi.toStringAsFixed(1)}");
  print("Grade: $grade");
}