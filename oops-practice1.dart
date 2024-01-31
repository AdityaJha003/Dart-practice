class Student {
  int _rollNo;
  String _name;
  int _mark1;
  int _mark2;
  int _mark3;
  String _collegeName;

  // Named constructor with positional parameters
  Student(this._rollNo, this._name, this._mark1, this._mark2, this._mark3, [this._collegeName = "COLLEGE"]);

  // Getter for roll number
  int get rollNo => _rollNo;

  // Setter for name with proper case conversion
  set name(String name) {
    _name = _properCase(name);
  }

  // Setter for college name with all caps conversion
  set collegeName(String collegeName) {
    _collegeName = collegeName.toUpperCase();
  }

  // Method to calculate total marks
  int _calculateTotalMarks() {
    return _mark1 + _mark2 + _mark3;
  }

  // Method to calculate percentage
  double _calculatePercentage() {
    return (_calculateTotalMarks() / 300) * 100;
  }

  // Method to calculate grade
  String _calculateGrade() {
    double percentage = _calculatePercentage();
    if (percentage >= 90) {
      return 'A Grade';
    } else if (percentage >= 70) {
      return 'B Grade';
    } else if (percentage >= 60) {
      return 'C Grade';
    } else if (percentage >= 50) {
      return 'D Grade';
    } else {
      return 'E Grade';
    }
  }

  // Method to convert name to proper case
  String _properCase(String name) {
    List<String> nameParts = name.toLowerCase().split(' ');
    List<String> properCaseParts = [];
    for (String part in nameParts) {
      properCaseParts.add(part[0].toUpperCase() + part.substring(1));
    }
    return properCaseParts.join(' ');
  }

  // Method to display student details
  void displayDetails() {
    print("Roll No: $_rollNo");
    print("Name: $_name");
    print("College Name: $_collegeName");
    print("Subjects:");
    print("  Mark 1: $_mark1");
    print("  Mark 2: $_mark2");
    print("  Mark 3: $_mark3");
    print("Total Marks: ${_calculateTotalMarks()}");
    print("Percentage: ${_calculatePercentage().toStringAsFixed(2)}%");
    print("Grade: ${_calculateGrade()}");
  }
}

void main() {
  // Create a Student object using named constructor
  Student student = Student(101, 'ajay KUmar sHaRma', 90, 80, 77);

  // Set college name using setter
  student.collegeName = 'My College';

  // Set name using setter
  student.name = 'ajay KUmar sHaRma';

  // Display student details
  student.displayDetails();
}
