// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐
import 'dart:math';

void main() {
  // 1. Student names list
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

  // 2. Scores map
  Map<String, int> studentScores = {};

  // 3. Assign random scores 60-100 to each student
  Random random = Random();
  for (String student in studentNames) {
    studentScores[student] = 60 + random.nextInt(41); // 60 to 100
  }

  // 4. Find highest, lowest, average
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  double averageScore = 0.0;
  int total = 0;

  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    total += score;

    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }

    if (score < lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }
  }

  averageScore = total / studentNames.length;

  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: $averageScore");

  // 5. Switch statement to categorize each student
  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";

    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
        break;
    }

    print("$student: $score ($category)");
  }
}