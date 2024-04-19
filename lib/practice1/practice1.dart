import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/practice1/model/course.dart';

class Practice1 extends StatelessWidget {
  const Practice1({super.key});

  @override
  Widget build(BuildContext context) {
    final List courses = ["Getx", "BLoc", "Riverpod", "Mobx", "Provider"];
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.only(top: 100),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Provider.of<ChangeCourse>(context, listen: false)
                    .ChangeSubjects(courses[index]);
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                height: 80,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: const Color(0xFF5c67c1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: index != 0
                      ? Text(
                          courses[index],
                          style: const TextStyle(
                              fontSize: 22, color: Colors.white),
                        )
                      : Text(
                          "I am learning ${Provider.of<ChangeCourse>(context).subject}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 24),
                        ),
                ),
              ),
            );
          }),
    );
  }
}
