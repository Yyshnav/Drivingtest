import 'package:driving_test_automation/customeWidgets/textfield.dart';
import 'package:driving_test_automation/home.dart';
import 'package:driving_test_automation/screens/bottomNavBar.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
   Login({super.key});
 final TextEditingController usernameController=TextEditingController();
 final TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      iconTheme: IconThemeData(color: Colors.red),
        actions: [Icon(Icons.person),],
        title: Text("Login Page"),
        backgroundColor: Color.fromARGB(228, 229, 20, 5),
        centerTitle: true, ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CustomeTextfield(username: 'Username',prifix: Icon(Icons.person),controller:usernameController ,),
          SizedBox(height: 5,),
          CustomeTextfield(username: 'password',prifix: Icon(Icons.lock),controller: passwordController,),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
             return Bottom();
            },));
            print(usernameController.text);
            print("password : ${passwordController.text}");
          }, child: Text('Login'))
         


        ],),
    );
  }
}