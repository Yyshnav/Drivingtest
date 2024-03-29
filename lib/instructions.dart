import 'package:driving_test_automation/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Instructions extends StatelessWidget {
  const Instructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ,
      body: 
      Column(
        //crossAxisAlignment: CrossAxisAlignment.end,
        
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [ CircleAvatar(radius: 20,child:Center(child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios_new,color: Color.fromARGB(219, 45, 44, 44),))),backgroundColor: Colors.white),
                w25,
               
               Text('Instructions',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                ]
            ),),
                Container(
                  width:double.infinity,
                  height: 700,
                  decoration: BoxDecoration(
                    color:Color.fromARGB(228, 249, 246, 246), 
                    
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45)),
                  ),
                  child: Column(
                    children: [
                      h15,
                      Text('Application Submission',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),h30,
                      h10,
                      Column( 
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('1. Fill Applicant Details',style: TextStyle(fontSize: 20,color: Colors.blue),),h15,
                          Text('2. Upload Documents',style: TextStyle(fontSize: 20,color: Colors.blue),),h15,
                          Text('3.Upload photo and signature',style: TextStyle(fontSize: 20,color: Colors.blue),),h15,
                          Text('4. Payment of fee',style: TextStyle(fontSize: 20,color: Colors.blue),),h15,
                          Text('5. Payment Status',style: TextStyle(fontSize: 20,color: Colors.blue),),h15,
                        ],
                      ),
                      h15,
                      
                      Row( 
                        mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue),
                             color: Colors.blue,
                          borderRadius: BorderRadius.circular(0)
                        ),
                        child: Center(child: Text("Continue",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                      ),
                     w15,
                          Container(
                            height: 35,
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blue),
                                color: Colors.blue,
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Center(child: Text("Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          ),
                        ],
                      ),
                    ],
                    
                    
                  ),
                  
                  
                
                  
                ),
              ],
            ),
          );
  }
}