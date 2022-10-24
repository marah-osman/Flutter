import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todofirebase/screens/addtask.dart';
import 'package:todofirebase/screens/home.dart';
import 'package:todofirebase/screens/taskslist.dart';
import 'package:todofirebase/widgets/loader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return WelcomeScreen();
          } else {
            return LoaderWidget(
              color: Colors.white,
            );
          }
        },
      ),
      routes: {
        "/tasks": (context) => TaskScreen(),
        "/add": (context) => AddTaskScreen(),
        // "/login": (context) => ProductScreen(),
        // "/register": (context) => ProductScreen(),
      },
    );
  }
}
