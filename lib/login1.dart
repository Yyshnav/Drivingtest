import 'package:driving_test_automation/constants/size.dart';
import 'package:flutter/material.dart';

class Login1 extends StatelessWidget {
  const Login1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
    Text('Sign in to',style: TextStyle(fontWeight: FontWeight.bold),),
h20,
    Text(' Your Account !',style: TextStyle(fontWeight: FontWeight.bold,),),
     h70,

        TextFormField(
                          decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(228, 249, 246, 246) ,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(6)
                    ),)
    ),
    h30,
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
                            decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(228, 249, 246, 246) ,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(6)
                      ),),
      ),
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         Text("Use another account",style: TextStyle(color: Colors.blue),),
         h30,
         ElevatedButton(onPressed: (){

         }, child: Text('sign in')),
      ],
      
    ),
   
    
        ],
      ),
    );
  }
}