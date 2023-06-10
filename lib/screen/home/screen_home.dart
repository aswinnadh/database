import 'package:database/db/function/db_functions.dart';
import 'package:database/screen/home/widgets/add_student_widget.dart';
import 'package:database/screen/home/widgets/list_student_widget.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudentWidget(),
             Expanded(
              child: ListStudentWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
