import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getstudents/postStudents.dart';

class AddNewStudent extends StatelessWidget {
  const AddNewStudent({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNameCotroller = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController courseController = TextEditingController();
    final TextEditingController scoreController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text('ADD NEW STUDENT'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color.fromRGBO(3, 218, 198, 1),
          foregroundColor: Colors.black,
          onPressed: () async {
            try {
              final newStudebtData = await PostStudents.saveStudent(
                  firstNameCotroller.text.toString(),
                  lastNameController.text.toString(),
                  courseController.text,
                  int.parse(scoreController.text));
              Navigator.pop(context, newStudebtData);
            } catch (e) {
              debugPrint(e.toString());
            }
          },
          icon: const Icon(Icons.check),
          label: const Text('save'),
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 15, 32, 10),
              child: TextField(
                cursorRadius: const Radius.circular(30),
                obscureText: false,
                controller: firstNameCotroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'firstname',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 15, 32, 10),
              child: TextField(
                cursorRadius: const Radius.circular(30),
                obscureText: false,
                controller: lastNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'lastname',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 15, 32, 10),
              child: TextField(
                cursorRadius: const Radius.circular(30),
                obscureText: false,
                controller: courseController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'course',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 15, 32, 10),
              child: TextField(
                cursorRadius: const Radius.circular(30),
                obscureText: false,
                controller: scoreController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'socer',
                ),
              ),
            )
          ])),
        ));
  }
}
