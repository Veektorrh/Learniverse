import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final IconData icon;
  final String assesment;
  final Color backgroundColor;
  const ExerciseCard({super.key, required this.assesment, required this.icon, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Card(
        color: backgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,15,15,0),
                          child: Icon(icon, color: Colors.white,size: 100),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8,0,8,15),
                          child: Text(assesment, style: TextStyle(color: Colors.white, fontSize: 18)),
                        )
                      ],
                    ),
                  ),
    );
  }
}