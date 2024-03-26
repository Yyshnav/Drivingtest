import 'package:driving_test_automation/LLtest.dart';
import 'package:driving_test_automation/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 37, 198, 248)),
        backgroundColor: Color.fromARGB(255, 247, 248, 249),
        actions: [
          IconButton(onPressed: () {          
          }, icon:Icon(Icons.notifications_active_rounded)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Column(
              children: [
                CircleAvatar(radius: 40,),
                Text("GUEST"),
                Text("9744513952")
                
              ],
            )),
            Container(
              child: Row(
                children: [
                  Icon(Icons.person,color: Color.fromARGB(213, 150, 148, 148),),w25,Text("My Profile",),
                ],
              ),
            ),h15,
            Container(
              child: Row(
                children: [
                  Icon(Icons.location_on,color: Color.fromARGB(213, 150, 148, 148)),w25,Text("Near By"),
                ],
              ),
            ),h15,
            Container(
              child: Row(
                children: [
                  Icon(Icons.help_center,color: Color.fromARGB(213, 150, 148, 148)),w25,Text("Help Center"),
                ],
              ),
            ),h15,
            Container(
              child: Row(
                children: [
                  Icon(Icons.privacy_tip,color: Color.fromARGB(213, 150, 148, 148),),w25,Text("About Us"),
                ],
              ),
            ),h15,
            Container(
              child: Row(
                children: [
                  Icon(Icons.logout_sharp,color: Color.fromARGB(213, 150, 148, 148)),w25,Text("Log out"),
                ],
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [Column(
          children: [
            Container(
              height: h!*0.19,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [Color.fromARGB(255, 98, 204, 236), Color.fromARGB(255, 247, 248, 249)], // Specify your gradient colors
            ),
                //color: Color.fromARGB(255, 205, 242, 254),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
              ),
              child: Row(children: [
                w10, CircleAvatar(radius: 44,),w5,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome',style: TextStyle(fontWeight: FontWeight.w600),),
                  Text("GUEST",style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.w500),)
                ],
              )],),
            ),
            h30,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.file_copy,size: 30,)),
                    Text("Application")
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Exam(),));
                    }, icon: Icon(Icons.note,size: 30)),
                    Text("Learners Test")
                  ],
                ),
                Column(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.electric_bike,size: 30)),
                    Text("General")
                  ],
                ),
              ],
            ),
            //CircleAvatar(radius: 12,)
          ],
        ),
        Positioned(
          top: h!*0.162,
          left: 30,
          right: 30,
          child: Container(
            width:w!*0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(
              width: 2,
              color: Color.fromARGB(255, 239, 237, 237)
            )
          ),
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Expanded(
              child: Container(
                child: Center(child: Text("Apply Driving Test",style: TextStyle(fontSize: 16,fontWeight:FontWeight.w600,color: Colors.white),)),
                decoration: BoxDecoration(
                  color:Color.fromARGB(255, 98, 204, 236),
                  border: Border.all(
                    color: Colors.white
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                
              ),
            ),
          ),
  
          ))]
      ),

    );
  }
}