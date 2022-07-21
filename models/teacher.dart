class Teacher {
  String name;
  int age;
  int experienced;

  Teacher({
    required this.name,
    required this.age,
    required this.experienced,
  });

  Teacher.mathTeacher({
    required String this.name,
    required int this.age,
    required int this.experienced,
    required String subject,
  });
}
