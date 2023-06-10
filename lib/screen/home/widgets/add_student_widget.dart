import 'package:database/db/function/db_functions.dart';
import 'package:database/db/model/data_model.dart';
import 'package:flutter/material.dart';



class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({super.key});
  final _namecontroller = TextEditingController();
  final _agecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: _namecontroller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'name'),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: _agecontroller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'age'),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
              onPressed: () {
                onAddStudentButtonClicked();
              },
              icon: const Icon(Icons.add),
              label: const Text('Add student'))
        ],
      ),
    );
  }

  Future<void> onAddStudentButtonClicked() async {
    final _name = _namecontroller.text.trim();
    final _age = _agecontroller.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    // print('$_name $_age');

    final _student = StudentModel(name: _name, age: _age);
    addStudent(_student);
  }
}
