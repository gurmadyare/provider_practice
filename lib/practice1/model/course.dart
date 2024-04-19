import 'package:flutter/material.dart';

class ChangeCourse extends ChangeNotifier {
  String subject = "";

  void ChangeSubjects(String newSubject) {
    subject = newSubject;

    notifyListeners();
  }
}
