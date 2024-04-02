import 'package:driving_test_automation/constants/colors.dart';
import 'package:flutter/material.dart';

class Rtohom extends StatelessWidget {
  const Rtohom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
           color:  Color.fromARGB(255, 244, 242, 242)
          ),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi,  Guest",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                  Text("email - guest@gmail.com",style: TextStyle(fontSize: 10),),
                      ],
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(radius: 40,),
              ),
                ],),SizedBox(height: 50,),
                
                Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)
                ),child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.circle_outlined,color: Colors.black,),Text("Total",style: TextStyle(fontWeight: FontWeight.bold,),),
                        ],
                      ),VerticalDivider(),
                      Row(
                        children: [
                          Icon(Icons.pending_outlined,color: Colors.black,),Text("Pending",style: TextStyle(fontWeight: FontWeight.bold,),),
                        ],
                      )
                      
                    ],
                  ),
                ),
                
               ),
               Row(mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Column(
                       children: [
                         Container(
                          height: 150,
                          width: 120,
                          decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)
                          ),child: Column(
                            children: [
                              Image.network('https://tse3.mm.bing.net/th?id=OIP.IaSW6JzBfhTyUb8IscUMJgHaHa&pid=Api&P=0&h=180'),
                              Text("ALL",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)
                            ],
                          ),
                          
                         ),
                         
                       ],
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Column(
                       children: [
                         Container(
                          height: 150,
                          width: 120,
                          decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)
                          ),child: Column(
                            children: [
                              Image.network('https://tse3.mm.bing.net/th?id=OIP.IaSW6JzBfhTyUb8IscUMJgHaHa&pid=Api&P=0&h=180'),
                              Text("Pending",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)
                            ],
                          ),
                          
                         ),
                         
                       ],
                     ),
                   ),
          ],
               ), 
                Row(mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                  Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Column(
                       children: [
                         Container(
                          height: 150,
                          width: 120,
                          decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)
                          ),child: Column(
                            children: [
                              Image.network('https://tse3.mm.bing.net/th?id=OIP.IaSW6JzBfhTyUb8IscUMJgHaHa&pid=Api&P=0&h=180'),
                              Text("Learners licence",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)
                            ],
                          ),
                          
                         ),
                         
                       ],
                     ),
                   ),Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Column(
                       children: [
                         Container(
                          height: 150,
                          width: 120,
                          decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)
                          ),child: Column(
                            children: [
                              Image.network('https://tse3.mm.bing.net/th?id=OIP.IaSW6JzBfhTyUb8IscUMJgHaHa&pid=Api&P=0&h=180'),
                              Text("Driving Licence",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)
                            ],
                          ),
                          
                         ),
                         
                       ],
                     ),
                   ),
          ],
               ), 
                
                 
            ],
            
          ),
        ),
      ),
      
    );
  }
}