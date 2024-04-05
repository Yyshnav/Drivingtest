import 'dart:io';

import 'package:driving_test_automation/constants/colors.dart';
import 'package:driving_test_automation/constants/size.dart';
import 'package:driving_test_automation/customeWidgets/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'datePicker.dart';

class Documents extends StatefulWidget {
  const Documents({super.key});

  @override
  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  String? _pickedImagePath;
  String? _pickedSignature;
  String? _pickedphysical;
  String? _pickedmedical;
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
               Text('Application For DL ',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                ]
            ),),h25,
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Learner's licence number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        ),
                      ],
                    ),h10,
                    Container(height: 45,
                      child: TextFormField( decoration: InputDecoration(hintText: ' LL no',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          //borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),),
                    ),h10,
                    Row( mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Date of birth",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        ),
                      ],
                    ),h10,
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
                                ),h15,
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Upload photo",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                    ),
                    //user image  
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed: (){_pickImage(ImageSource.camera,_pickedImagePath);}, icon: Icon(Icons.camera_alt_outlined, size: 29,)),
                        Text("Camera")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){_pickImage(ImageSource.gallery,_pickedImagePath);}, icon: Icon(Icons.image,size :29)),
                        Text("Gallery")
                      ],
                    )
                  ],),
                  ],
                ),


                //uplod signature
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Upload Signature",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                    ),
                  
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed: (){_pickImage(ImageSource.camera,_pickedSignature);}, icon: Icon(Icons.camera_alt_outlined, size: 29,)),
                        Text("Camera")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){_pickImage(ImageSource.gallery,_pickedSignature);}, icon: Icon(Icons.image,size :29)),
                        Text("Gallery")
                      ],
                    )
                  ],),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Upload physical fitness form",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                    ),
                    //user phiscl frm
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed: (){_pickImage(ImageSource.camera,_pickedphysical);}, icon: Icon(Icons.camera_alt_outlined, size: 29,)),
                        Text("Camera")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){_pickImage(ImageSource.gallery,_pickedphysical);}, icon: Icon(Icons.image,size :29)),
                        Text("Gallery")
                      ],
                    )
                  ],),
                    ],
                    ),
                    
                //uplod signature
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Upload Medical form",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                    ),
                  
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed: (){_pickImage(ImageSource.camera,_pickedmedical);}, icon: Icon(Icons.camera_alt_outlined, size: 29,)),
                        Text("Camera")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: (){_pickImage(ImageSource.gallery,_pickedmedical);}, icon: Icon(Icons.image,size :29)),
                        Text("Gallery")
                      ],
                    )
                  ],),
                  ],
                ),
                 SizedBox(height: 90,),
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
        )
        ),
              height: 700,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.white,),
              
               ),
               
        ],),
);}

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
                ),);}

                Future<void> _pickImage(ImageSource source,String? variable) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _pickedImagePath = pickedFile.path;
});
}}
}
                
                