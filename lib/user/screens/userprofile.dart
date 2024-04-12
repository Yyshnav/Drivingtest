import 'package:driving_test_automation/constants/colors.dart';
import 'package:driving_test_automation/constants/constantVariables.dart';
import 'package:driving_test_automation/constants/size.dart';
import 'package:driving_test_automation/customeWidgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Myprofile extends StatefulWidget {
  Myprofile({super.key});

  @override
  State<Myprofile> createState() => _MyprofileState();
}
final phonenocontroller=TextEditingController(text: profile.value[0].aadharno.toString());
final emailcontroller=TextEditingController(text: profile.value[0].name);
final usernamecontroller=TextEditingController(text: profile.value[0].email);

class _MyprofileState extends State<Myprofile> {

  ValueNotifier<bool> isViewprofileClicke = ValueNotifier(true);
  ValueNotifier<bool> isEditprofileClicke = ValueNotifier(false);
  bool isReadonly = true;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
        final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: c1,  
     body: 
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                CircleAvatar(radius: 20,child:Center(child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios_new,color: Color.fromARGB(219, 45, 44, 44),))),backgroundColor: Colors.white),
               w25,
               Text('My Profile',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                ]
                
            ),
          ),
      
          Expanded(
            child: Container(
              width: double.infinity,
              //height: double.infinity,
                                decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45),)),
      
      child:Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              h30,
              CircleAvatar(radius: 60,backgroundColor: Color.fromARGB(255, 109, 212, 247),
              child: 
              CircleAvatar(radius: 55,backgroundColor: const Color.fromARGB(255, 233, 206, 206),backgroundImage: AssetImage('assets/images/th.jpeg"),'),),),
              h20,
                Row(
          children: [
            Expanded(
              
              child: InkWell(onTap: () {
                //print("view profile ${isViewprofileClicke.value}");
                         //     print("view Edit ${isEditprofileClicke.value}");
              if (isViewprofileClicke.value == false) {
                //print("iam Here");
                isViewprofileClicke.value = true;
                isEditprofileClicke.value = false;
              }
              else{
               // print("i al else");
                return;
              }
                            },
              child: ValueListenableBuilder(
                valueListenable: isViewprofileClicke,
                builder: (BuildContext context, value, Widget? child) {return Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: isViewprofileClicke.value?Color.fromARGB(255, 79, 208, 241):Color.fromARGB(228, 249, 246, 246)),
                  height: 50,
                  //width: w*0.4,
                  child: Center(child: Text('View Profile',style:TextStyle(fontSize: 15,fontWeight:FontWeight.bold ))),
                  
                ); },
              ),
                            ),
            ),
            
            Expanded(
              child: InkWell(onTap: () {
               // print("view profile ${isViewprofileClicke.value}");
                                print("view edit ${isEditprofileClicke.value}");
              if (isEditprofileClicke.value == false) {
              //  print("here");
                isEditprofileClicke.value = true;
                isViewprofileClicke.value = false;
              }
              else{
              //  print("Else");
                return;
              }
                          },
              child: ValueListenableBuilder(
                valueListenable: isEditprofileClicke,
                builder: (BuildContext context, value, Widget? child) { return  Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:isEditprofileClicke.value?Color.fromARGB(255, 79, 208, 241):Color.fromARGB(228, 249, 246, 246)),
                  height: 50,
                  //width: w*0.4,
                  child: Center(child: Text('Edit profile',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold))),
                ); },
                
              ),
                          ),
            )
          ],
                ),
                
                h25,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mobile No.",style: TextStyle(fontWeight: FontWeight.bold),),h10,
                    TextFormField(controller: phonenocontroller,
                      readOnly: isReadonly,
                      decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(228, 249, 246, 246) ,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(6)
                      )
                    ),),
                  ],
                ),
                h20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name.",style: TextStyle(fontWeight: FontWeight.bold,),),h10,
                     TextFormField(controller: usernamecontroller,
                      readOnly: isReadonly,
                      decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(228, 249, 246, 246) ,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(6)
                      )
                    ),),
                  ],
                ),
                h20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email id.",style: TextStyle(fontWeight: FontWeight.bold),),h10,
                     TextFormField(controller: emailcontroller,
                      readOnly: isReadonly,
                      decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(228, 249, 246, 246) ,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(6)
                      )
                    ),),
                  ],
                )
            ],
                 
          ),
        ),
        
      )
  
          )),
         
        ],
      )
    );
  }
}