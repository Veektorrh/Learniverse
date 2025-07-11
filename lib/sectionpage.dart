import 'package:flutter/material.dart';
import 'package:flutter_application_project_2/classroompage.dart';
import 'package:flutter_application_project_2/exercisecard.dart';
import 'package:flutter_application_project_2/globalvariablespage.dart';


class SectionPage extends StatelessWidget {
 final Map<String, Object> course;
  
  const SectionPage({super.key, required this.course});

final String test = 'General Exercises';

  @override
  Widget build(BuildContext context) {
    // double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 270,
            width: double.infinity,
          decoration: BoxDecoration(
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
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop(MaterialPageRoute(builder: (context){
                            return ClassroomPage();
                          }));
                        },
                        child: Icon(Icons.arrow_back_ios, color: Colors.white,)),
                        Text('ENGLISH', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(course['Section'] as String, style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold)),
                          Text(course['title'] as String, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                          
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Icon(Icons.check_circle_outline_sharp, color: Colors.white,size: 50,),
                      )
                    ],
                  ),
                )
              ]
            )
          ),
          Expanded(
            child: ListView.builder(
              
              itemCount: (course['chapters'] as List<Map<String, Object>>).length,
              itemBuilder: (context, index){ 
              final chapter = ((course['chapters'] as List<Map<String, Object>>)[index]);
              
                return ListTile(
                leading: Text(chapter['id'] as String, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                title: Text(chapter['topic'] as String, style: TextStyle( fontWeight: FontWeight.w500)),
                trailing: Text(chapter['progress'] as String, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                
                );
              
              }
              
              ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(10.0,0,10,10),
            child: Text('General Exercise ${course['Section']}', style: TextStyle(fontSize: 27, color: const Color.fromARGB(255, 112, 4, 236), fontWeight: FontWeight.bold)),
          ),
          
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, left: 10, right: 10),
            child: SizedBox(
              height: screenheight * 0.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:exercise.length,
                itemBuilder: (context, index){
                  return ExerciseCard(
                    assesment: exercise[index]['id'] as String, 
                    icon: (exercise[index]['Icon'] as IconData), 
                    backgroundColor: index.isOdd ? Colors.purpleAccent : Colors.deepPurpleAccent,
                    );
              
                }),
            ),
          )
        ]
      )
    );
  }
}