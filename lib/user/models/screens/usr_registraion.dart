import 'package:driving_test_automation/constants/size.dart';
import 'package:driving_test_automation/customeWidgets/textfield.dart';
import 'package:driving_test_automation/user/models/screens/datePicker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Registration extends StatelessWidget {
   Registration({super.key});
  final TextEditingController firstnamecontroller=TextEditingController();
  final TextEditingController lastnamecontroller=TextEditingController();
  final TextEditingController emailcontroller=TextEditingController();
  final TextEditingController phonenocontroller=TextEditingController();
  final TextEditingController dobcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Form'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 130, 128, 160),

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomeTextfield(username: 'FirstName',prifix: Icon(Icons.person),controller: firstnamecontroller,),
            SizedBox(height:20),
            CustomeTextfield(username: 'LastName',prifix: Icon(Icons.person),controller: lastnamecontroller,),
            SizedBox(height:20),
            Text("Select Gender"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 22, child: Icon(Icons.male),),
                      h5,
                      Text("Male")
                  ],
                ),Column(
                  children: [
                    CircleAvatar(radius: 22, child: Icon(Icons.female),),
                    h5,Text("Female")
                  ],
                ),Column(
                  children: [
                    CircleAvatar(radius: 22, child: Icon(Icons.person),),
                    h5,Text("Other")
                  ],
                )
              ],
            ),
            h20,
            CustomeTextfield(username: 'Email',prifix:Icon(Icons.email),controller:emailcontroller),
            SizedBox(height:20),
            CustomeTextfield(username: 'PhoneNo',prifix: Icon(Icons.phone_android),controller: phonenocontroller,),
            SizedBox(height:20),
            CustomeTextfield(username: 'Address',prifix: Icon(Icons.location_city),
            ),
            h20,
            InkWell(
              onTap: () => alert(context),
              child: Container(
                height: 46,
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(8)),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.calendar_month),w10, ValueListenableBuilder
                  (valueListenable: selecteddate ,
                  builder: (context, value, child) => Text(selecteddate.value) ,
                    )
                ],),
                ),
            ),
            h20,
            Center(child: ElevatedButton(onPressed: (){}, child: Text('REGISTER'))),
            
          ],
          
          
        ),
      ),
  

    );
  }
  alert(BuildContext context){
    return showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Select Date of Birth"),
                  content: Container(
                    height: 200,
                    child: DateOfBirth()),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        print(selecteddate);
                        Navigator.of(ctx).pop();
                      },
                      child: Text("Submit"),
                    ),
                  ],
                ),
              );
  }
}