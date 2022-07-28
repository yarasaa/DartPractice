import 'package:flutter/material.dart';

class ListViewUsing extends StatelessWidget {
  ListViewUsing({Key? key}) : super(key: key);
  List<Student> allStudent = List.generate(
    500,
    (index) => Student(
        index + 1, 'Student name ${index + 1}', 'Student surname ${index + 1}'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: ListView(
        children: allStudent
            .map(
              (Student student) => ListTile(
                title: Text(student.name),
                subtitle: Text(student.surname),
                leading: CircleAvatar(
                  child: Text(
                    student.id.toString(),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
}
