import 'package:driving_test_automation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Requestlist extends StatefulWidget {
  const Requestlist({super.key});

  @override
  State<Requestlist> createState() => _RequestlistState();
}

class _RequestlistState extends State<Requestlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:c1,
      body: 
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(radius: 20,child:Center(child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios_new,color: Color.fromARGB(219, 45, 44, 44),))),backgroundColor: Colors.white),
                  ]),     
          ),SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  color: Color.fromARGB(228, 249, 246, 246),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50,10,50,10),
                    child: Text("All",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: Color.fromARGB(227, 90, 88, 88)),),
                  )),
               Container(
                  color:Color.fromARGB(228, 249, 246, 246),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50,10,50,10),
                    child: Text("Learners Licence",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: Color.fromARGB(227, 90, 88, 88)),),
                  )),
                Container(
                  color: Color.fromARGB(228, 249, 246, 246),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50,10,50,10),
                    child: Text("Driving Licence",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color:Color.fromARGB(227, 90, 88, 88)),),
                  )),
                Container(
                  color: Color.fromARGB(228, 249, 246, 246),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50,10,50,10),
                    child: Text("Approved",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color:Color.fromARGB(227, 90, 88, 88)),),
                  )),
              ],
            ),
          ),Row(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              CircleAvatar(
              radius: 30,backgroundColor: Color.fromARGB(255, 129, 135, 136), )
              
            ],
          )]
          )
          
          );
  }
}