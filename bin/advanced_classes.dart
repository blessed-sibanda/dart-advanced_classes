void main(List<String> arguments) {
  final jon = Person('Jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(jon.fullName);
  print(jane.fullName);
  final historyGrade = Grade.B;
  jane.grades.add(historyGrade);
  print(jane.grades);
}

enum Grade { A, B, C, D, F }

class Person {
  Person(this.givenName, this.surname);

  String givenName;
  String surname;
  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);

  var grades = <Grade>[];

  @override
  String get fullName => '$surname, $givenName';
}
