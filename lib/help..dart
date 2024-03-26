import 'package:driving_test_automation/constants/colors.dart';
import 'package:driving_test_automation/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class Help extends StatelessWidget {

// }




class Help extends StatelessWidget {
  Help({super.key});

  @override
  Widget build(BuildContext context) {
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
               
               Text('Raise a complaint',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                ]
            ),),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 700,
              //height: double.infinity,
                                decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45),)),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                              children: [
                                h30,
                                  TextFormField(
                      
                      decoration: InputDecoration(hintText: ' id',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        //borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),),
                    
                                  h25,
                                 TextFormField(
                      maxLength: 50,
                      decoration: InputDecoration(hintText: 'Enter Complaint',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        //borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(14)
                      )
                    ),),
                    h30,
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                   children: [
                                     Container(
                                              height: 30,
                                              width: 110,
                                              decoration: BoxDecoration(
                                                color: Colors.blue,
                                                border: Border.all(
                                                 style: BorderStyle.none
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                              Icon(Icons.attach_file_outlined,color: Colors.white,),
                            
                                                  TextButton(onPressed: ()
                                                  {
                                                  
                                                  },child: Text("Attach",style: TextStyle(color: Colors.white),),),
                                                ],
                                              ),
                                            ),
                                   ],
                                 ),h30,
                                         Container(
                                          height: 50,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            border: Border.all(
                                              style: BorderStyle.none
                                            ),
                                            borderRadius: BorderRadius.circular(0)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              TextButton(onPressed: ()
                                              {
                                                
                                              },child: Text("Raise a complaint",style: TextStyle(color: Colors.white),),),
                                            ],
                                          ),
                                        ),
                               ]),
                  ),
                  ),],
      ),
    );
  }
}