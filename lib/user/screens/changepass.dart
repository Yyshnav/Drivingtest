import 'package:driving_test_automation/constants/colors.dart';
import 'package:driving_test_automation/constants/size.dart';
import 'package:driving_test_automation/customeWidgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class changepass extends StatefulWidget {
  changepass({super.key});

  @override
  State<changepass> createState() => _MyprofileState();
}

class _MyprofileState extends State<changepass> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c1,  
     body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  CircleAvatar(radius: 20,child:Center(child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios_new,color: Color.fromARGB(219, 45, 44, 44),))),backgroundColor: Colors.white),
                 w25,
                 Text('Change password',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                  ]
                  
              ),
            ),
             Expanded(
            child: Container(
              width: double.infinity,
              //height: double.infinity,
                                decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45),)),
      child: Column( 
                  children: [
                    h20,
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.remove_red_eye),
                          hintText: "enter old password",
                        filled: true,
                        fillColor: Color.fromARGB(228, 249, 246, 246) ,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),),
                    ),h10,Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: TextFormField(
                        decoration: InputDecoration(hintText: "enter new password",
                         suffixIcon: Icon(Icons.remove_red_eye),
                        filled: true,
                        fillColor: Color.fromARGB(228, 249, 246, 246) ,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)
                        )
                                         ),),
                     ),
                     h10,
                     Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "enter confirm password",
                          suffixIcon: Icon(Icons.remove_red_eye),
                        filled: true,
                        fillColor: Color.fromARGB(228, 249, 246, 246) ,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15))),),
                     ),
                       h30,
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                child: Center(
                                    child: Text(
                                  'Change password',
                                  style: TextStyle(color: Colors.white),
                                )),
                                color: Color.fromARGB(255, 98, 204, 236),
                                width: 300,
                                height: 50,
                              ),
                            ),]),)),
                 
                  ])
     );
        
      
  }
}