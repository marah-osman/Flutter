import 'package:flutter/material.dart';

class Task {
  int id;
  String title;
  bool isdone;
  String createddate;

  Task({
    required this.id,
    required this.title,
    required this.isdone,
    required this.createddate,
  });
}
