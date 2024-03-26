import 'dart:html';

import 'package:driving_test_automation/api/api.dart';
import 'package:driving_test_automation/customeWidgets/textfield.dart';
import 'package:flutter/material.dart';

class Numberapi extends StatefulWidget {
   Numberapi({super.key});

  @override
  State<Numberapi> createState() => _NumberapiState();
}

class _NumberapiState extends State<Numberapi> {
  final TextEditingController usernameController=TextEditingController();

  String txt = "not available";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomeTextfield(username: 'type text here',prifix: Icon(Icons.person),controller: usernameController,),
          ElevatedButton(onPressed: ()async {
            final response=await apiCall(int.parse(usernameController.text));
            txt=response!.text;
            print("txt is :$txt");
            setState((){

            });
          }, child: Text('SUBMIT')),
          Text(txt)],
          )

    );
}
}