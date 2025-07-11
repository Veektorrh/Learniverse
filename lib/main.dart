import 'package:flutter/material.dart';
import 'package:flutter_application_project_2/homepage.dart';

//import 'package:flutter_application_project_2/sectionpage.dart';
import 'package:get/get.dart';
//import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'classroompage.dart';

//import 'globalvariablespage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'lEARNable App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 83, 9, 211)),
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => WelcomePage()),
        GetPage(name: "/classroom", page: ()=> ClassroomPage()),
        //GetPage(name: "/section", page: ()=> SectionPage(course: courses[0],))
      ],
     // home: const WelcomePage(),
    );
  }
}

