import 'package:flutter/material.dart';
import 'package:flutter_application_project_2/classroompage.dart';
import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/image1.jpg'), opacity: 0.4, fit: BoxFit.fitHeight ),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(90)),
                color:const Color.fromARGB(255, 112, 4, 236)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,50.0,30,50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DrawerButton(
                          color: Colors.white,
                          style: ButtonStyle(
                            iconSize: WidgetStatePropertyAll(30)
                          ),
                          ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                          ),
                          width: 50,
                          height: 50,
                          
                        )
                      ],
                    
                    ),
                  
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0,0,0,80),
                    child: Text('Easy and \nquick \nLearn \nLanguage \nonline!',  style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900),),
                  )
                ]
                 
              ),
            
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 60, 80, 60),
            child: ElevatedButton(onPressed: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context){
              //         return ClassroomPage();
              //       }
              //       ));
              Get.to(()=> ClassroomPage());
              // Get.toNamed("/classroom");
            }, 
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(const Color.fromARGB(255, 112, 4, 236)),
              minimumSize: WidgetStatePropertyAll(Size(double.infinity, 60))
            ),
              child: Text('START', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),)),
          )
        ],
      ),

    );
  }
}