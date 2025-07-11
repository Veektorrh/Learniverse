import 'package:flutter/material.dart';
//import 'package:flutter_application_project_2/classroompage.dart';

class CourseCards extends StatelessWidget {
  final String section;
  final String title;
  final Color backgroundColor;
  const CourseCards({super.key, required this.section, required this.title, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25.0, 10, 25, 10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(section, style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),),
                  Text(title, style: TextStyle(color: Colors.white, fontSize: 18,))
                ],
              ),
              Icon(Icons.check_circle_outlined, size: 50, color: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}