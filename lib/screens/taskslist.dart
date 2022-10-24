import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/loader.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var tasks = FirebaseFirestore.instance.collection("tasks");
    return StreamBuilder(
        stream: tasks.snapshots(),
        builder: (context, snapshot) {
          print(snapshot.data?.docs[0]["title"] ?? "");
          return Scaffold(
            appBar: AppBar(),
            body: (snapshot.connectionState == ConnectionState.done)
                ? ListView.builder(
                    itemCount: snapshot.data?.docs.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text(snapshot.data?.docs[index]["title"]),
                          subtitle:
                              Text(snapshot.data?.docs[index]["createddate"]),
                        ))
                : LoaderWidget(
                    color: Colors.black,
                  ),
          );
        });
  }
}
