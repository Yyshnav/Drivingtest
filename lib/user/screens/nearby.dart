import 'package:driving_test_automation/constants/colors.dart';
import 'package:driving_test_automation/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NearBy extends StatelessWidget {
  const NearBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c1,
     body: 
      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                CircleAvatar(radius: 20,child:Center(child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_ios_new,color: Color.fromARGB(219, 45, 44, 44),))),backgroundColor: Colors.white),
                w25,
               
               Text('Near By',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                ]
            ),),
            SizedBox(height: 50,),
            Container(
              width: double.infinity,
              height: 700,
              //height: double.infinity,
                                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45),)),
                  child: Column(
                    children: [
                      h30,
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: NetworkImage("data:image/png;base64,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")),
                                        border:Border.all(style: BorderStyle.none),borderRadius: BorderRadius.circular(7),color:Colors.white ),),
                                    
                                  ],
                                ),
                                w20,
                                Column(
                                 
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Nearest RTO",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),h15,
                                     Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                                         Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blue,
                                            ),
                                            borderRadius: BorderRadius.circular(15)
                                          ),
                                         child: TextButton(onPressed: ()
                                          {
                                            
                                          },child: Text("View Map",style: TextStyle(color: Colors.blue),),),
                                                                             ),
                                       ],
                                     ),
                                  ],
                                )
                        
                              ],
                            ),
                            h20,
                            Divider()
                          ],
                          
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1344779917/vector/medical-center-hospital-building-vector-design.jpg?s=612x612&w=0&k=20&c=_sZByueZhEZbK2WjQz1jqXy1_Rr5jYkgiVBj-2ls44s=")),
                                        border:Border.all(style: BorderStyle.none),borderRadius: BorderRadius.circular(7),color:Colors.white),),
                                    
                                  ],
                                ),
                                w20,
                                Column(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Nearest Hospital",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),h15,
                                    Container(
                                      //color: Colors.amber,
                                      child: Row(
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.blue,
                                              ),
                                              borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: TextButton(onPressed: ()
                                            {
                                              
                                            },child: Text("View Map",style: TextStyle(color: Colors.blue),),),
                                          ),
                                        ],
                                      ),
                                    ),
                                     
                        
                        
                                  ],
                                ),
                        
                              ],
                            ),
                            h20,
                            Divider()
                          ],
                          
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 120,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: NetworkImage("data:image/png;base64,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")),
                                        border:Border.all(style: BorderStyle.none),borderRadius: BorderRadius.circular(7),color:Colors.white),),
                                    
                                  ],
                                ),
                                w20,
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Nearest Police station",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),h15,
                                    Container(
                                      height: 30,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blue,
                                        ),
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                      child: TextButton(onPressed: ()
                                      {
                                        
                                      },child: Text("View Map",style: TextStyle(color: Colors.blue),),),
                                    ),
                                     
                        
                        
                                  ],
                                ),
                        
                              ],
                            ),
                            h20,
                            Divider()
                          ],
                          
                        ),
                      ),
                    
                    ],
                  ),
                  ),],
      ),
    );
  }
}