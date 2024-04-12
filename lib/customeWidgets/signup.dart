//signup
import 'package:driving_test_automation/constants/size.dart';
import 'package:driving_test_automation/user/models/userRegmodel.dart';
import 'package:driving_test_automation/user/screens/datePicker.dart';
import 'package:driving_test_automation/user/services/userregapi.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SignupForm extends StatefulWidget {
  SignupForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupForm> createState() => _SignupFormState();
}
final usernamecontroller=TextEditingController();
final passwordcontroller=TextEditingController();
final emailcontroller=TextEditingController();
final aadhar_numbercontroller=TextEditingController();
final imagepathcontroller=TextEditingController();



class _SignupFormState extends State<SignupForm> {
  final _formKey = GlobalKey<FormState>();

  Object? _radioVal;
  String? selectedgender;
  String? _pickedImagePath;

  @override
  Widget build(BuildContext context) {

    final h = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Container(
        height: h*0.7,
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
               Column(
                 children: [
                   Row(
                    children: [
                      Icon(Icons.group_rounded), w5,
                      Radio(
                        value: 0,
                        groupValue: _radioVal,
                        onChanged: ( value) {
                          if (value != null) {
                            setState(() {
                              _radioVal = value;
                              selectedgender='male';
               
                              print(selectedgender);
                              //error='';
                            });
                          }
                        },
                      ),
                      const Text('Male ',),
                      Radio(
                        value: 1,
                        groupValue: _radioVal,
                        onChanged: ( value) {
                          if (value != null) {
                            setState(() {
                              _radioVal = value;
                               selectedgender='female';
                              print(selectedgender);
                            });
                          }
                        },
                      ),
                      const Text('Female '),
                      Radio(
                        value: 2,
                        groupValue: _radioVal,
                        onChanged: ( value) {
                          if (value != null) {
                            setState(() {
                              _radioVal = value;
                               selectedgender='others';
                              print(selectedgender);
                            });
                          }
                        },
                      ),
                      const Text('Others '),
                    ],
                         ),
                 ],
               ),
       h10,
               TextFormField(
                controller: usernamecontroller,
                validator: (value) {
                if (value == "" || value!.isEmpty) {
                  return " field cant be empty";
                  }
                  else{
                    return null;
                  }
              },
                decoration: InputDecoration(
                  hintText: "Enter username",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
               TextFormField(
                controller: passwordcontroller,
                validator: (value) {
                if (value == "" || value!.isEmpty) {
                  return " field cant be empty";
                  }
                  if(value.length <6){
                    return "enter min 6 digit password";
                  }
                  else{
                    return null;
                  }
              },
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
               TextFormField(
                controller: emailcontroller,
                 validator: (value) {
                if (value == "" || value!.isEmpty) {
                  return " field cant be empty";
                  }
                  else{
                    return null;
                  }
              },
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Enter email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
               TextFormField(
                controller: aadhar_numbercontroller,
                 validator: (value) {
                if (value == "" || value!.isEmpty) {
                  return " field cant be empty";
                  }
                  else{
                    return null;
                  }
              },
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "Enter aadharnumber",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10.0),
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
            h10,
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text("Upload image :"),
                  Row(
                    children: [
                      IconButton(onPressed: (){_pickImage(ImageSource.camera);}, icon: Icon(Icons.camera_alt_outlined, size: 20,)),
                      Text("Camera")
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: (){_pickImage(ImageSource.gallery);}, icon: Icon(Icons.image,size :20)),
                      Text("Gallery")
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Text("Signup"),
                onPressed: () {
                  signupclicked();
                                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  //dob alert
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

  //imgpicker
  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _pickedImagePath = pickedFile.path;
   });
}
}

//signup clicked
 signupclicked() async{
  final user = Userreg(usernamecontroller.text, emailcontroller.text, aadhar_numbercontroller.text, selecteddate.value, selectedgender!, _pickedImagePath!, passwordcontroller.text);
 final res = await userregisterApi(user);
 if (res=='success') {
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("successfully registered"),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(10),
                duration: Duration(seconds: 8)));

 } else {
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("something went wrong"),
                backgroundColor: Colors.red,
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(10),
                duration: Duration(seconds: 8)));
 } 
 {
   
 } 
 }
}