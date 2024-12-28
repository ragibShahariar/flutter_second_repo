//Author: Ragib Shahariar//
//Date 28-12-24//


abstract class Role {
  void displayRole();
}

class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

class Student extends Person implements Role {
  String studentID;
  String grade;
  List<int> courseScores;

  Student(String name, int age, String address, this.studentID, this.grade, this.courseScores)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    int total = courseScores.reduce((a, b) => a + b);
    return total / courseScores.length;
  }
}

class Teacher extends Person implements Role {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}

void main() {
  var studentScores = [90, 85, 82];
  var student = Student("John Doe", 20, "123 Main St", "1001", "A", studentScores);
  student.displayRole();
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Address: ${student.address}");
  print("Average Score: ${student.calculateAverageScore()}");

  print("");

  var teacherCourses = ["Math", "English", "Bangla"];
  var teacher = Teacher("Mrs. Smith", 35, "456 Oak St", "1010", teacherCourses);
  teacher.displayRole();
  print("Name: ${teacher.name}");
  print("Age: ${teacher.age}");
  print("Address: ${teacher.address}");
  teacher.displayCoursesTaught();
}
