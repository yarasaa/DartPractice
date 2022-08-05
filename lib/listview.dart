import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

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
      body: buildListViewSeperated(),
    );
  }

  ListView buildListViewSeperated() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var students = allStudent[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
              } else {
                EasyLoading.instance.backgroundColor = Colors.yellow;
              }
              EasyLoading.showToast(
                'Tıklandı...',
                duration: Duration(
                  seconds: 3,
                ),
                dismissOnTap: true,
                toastPosition: EasyLoadingToastPosition.bottom,
              );
            },
            title: Text(students.name),
            subtitle: Text(students.surname),
            leading: CircleAvatar(
              child: Text(
                students.id.toString(),
              ),
            ),
          ),
        );
      },
      itemCount: allStudent.length,
      separatorBuilder: (context, index) {
        var newIndex = index + 1;
        if (newIndex % 4 == 0) {
          return Divider(thickness: 2, color: Colors.teal);
        }
        return SizedBox();
      },
    );
  }

  ListView ClassicListView() {
    return ListView(
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
    );
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);
}
