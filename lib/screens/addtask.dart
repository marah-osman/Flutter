import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../task.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  Task task = Task(id: 1, title: "", createddate: "", isdone: true);
  var form = GlobalKey<FormState>();
  saveForm() {
    form.currentState?.save();
    FirebaseFirestore.instance
        .collection("tasks")
        .add({
          "title": task.title,
          "createddate": task.createddate,
        })
        .then((value) => Navigator.of(context).pushNamed("/products"))
        .onError((error, stackTrace) => print(error.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Form(
            key: form,
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      label: Text(
                    "Add new task",
                  )),
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "must enter a task ";
                    }
                  },
                  onSaved: (newValue) {
                    task.title = newValue!;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(label: Text("Date")),
                  onSaved: (newValue) {
                    task.createddate = newValue!;
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      saveForm();
                    },
                    child: Text("Add"))
              ],
            )),
      ),
    );
  }
}
