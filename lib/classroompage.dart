import 'package:flutter/material.dart';
import 'package:flutter_application_project_2/coursecards.dart';
import 'package:flutter_application_project_2/globalvariablespage.dart';
import 'package:flutter_application_project_2/homepage.dart';
import 'package:flutter_application_project_2/sectionpage.dart';
import 'package:get/get.dart';
//import 'package:flutter_application_project_2/sectionpage.dart';

class ClassroomPage extends StatelessWidget {
  const ClassroomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(actions: [
      //   Icon(Icons.arrow_back)
      // ],),
      body: Column(
        children: [
          Container(
            height: 270,
            width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/image2.jpg'), opacity: 0.4, fit: BoxFit.fitHeight),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(90)), color: const Color.fromARGB(255, 112, 4, 236)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,40,20,0),
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(onTap: (){
                    //     Navigator.of(context).pop(MaterialPageRoute(builder: (context){
                    //   return WelcomePage();
                    // }
                    // ));
                        Get.back();
                      },
                        child: Icon(Icons.arrow_back_ios, color: Colors.white,)),
                      Container(
                        decoration: 
                          BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                          ),
                          width: 50,
                          height: 50,      
                      )
                    ]
                  ),
                ), 
                Padding(
                  padding: const EdgeInsets.only(left: 25, bottom: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ENGLISH', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                      Text('MAIN UNITS', style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold))
                    ],
                  ),
                )
               
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (c0ntext){
                      return SectionPage(course: courses[index]);
                    }));
                  },
                  child: CourseCards(
                                section: courses[index]['Section'] as String, 
                                title:courses[index]['title'] as String,
                                backgroundColor: index.isEven ? const Color.fromARGB(255, 112, 4, 236): Colors.purple,
                                ),
                );
              }
              ),
          )

          
        ],
      ),
    );
  }
}