import 'dart:io';

void main() {
// Ask for student details
print("Enter student's name: ");
String? name = stdin.readLineSync();

// Use try-catch to handle invalid inputs
try {
print("Enter Assignment score: ");
double assignment = double.parse(stdin.readLineSync()!);

print("Enter Midterm score: ");
double midterm = double.parse(stdin.readLineSync()!);

print("Enter Final Exam score: ");
double finalExam = double.parse(stdin.readLineSync()!);

// CONSTANTS
const double passingGrade = 60.0;
const double assignmentWeight = 0.2;
const double midtermWeight = 0.3;
const double finalExamWeight = 0.5;

// COMPUTE WEIGHTED GRADE
double finalGrade = (assignment * assignmentWeight) +
(midterm * midtermWeight) +
(finalExam * finalExamWeight);

// Output results
print("\nHi ${name}, here is your grade report:");
print("Assignment Score: ${assignment.toStringAsFixed(1)}");
print("Midterm Score: ${midterm.toStringAsFixed(1)}");
print("Final Exam Score: ${finalExam.toStringAsFixed(1)}");
print("Final Grade: ${finalGrade.toStringAsFixed(1)}");

// Pass/Fail result
if (finalGrade >= passingGrade) {
print("Congratulations ${name}, you Passed!");
} else {
print("Sorry ${name}, study hard next time.") ;
}
} catch (e) {
print("Error: Please enter valid numeric scores only.");
}
}
