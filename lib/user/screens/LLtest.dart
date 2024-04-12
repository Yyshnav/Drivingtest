import 'package:driving_test_automation/constants/colors.dart';
import 'package:driving_test_automation/constants/size.dart';
import 'package:driving_test_automation/user/models/learnersApplyModel.dart';
import 'package:driving_test_automation/user/services/learnersapplyApi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Exam extends StatefulWidget {
  Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  var rtos = [
    'KOZHIKODE-KL11',
    'KODUVALLY-KL57',
    'KOYILANDI-KL56',
    'MALAPPURAM-KL10',
    'KANNUR-KL13',
  ];

  var vehicleclass = [
    'Motor cycle without Gear(MCWOG)',
    'Motor cycle with Gear(MCWG)',
    'Light Motor Vehicle(LMV)',
  ];
  var Districts = [
    'Kasargod',
    'Alappuzha',
    'Ernakulam',
    'Idukki',
    'Kannur',
    'Kollam',
    'Kottayam',
    'Kozhikode',
    'Malappuram',
    'Palakkad',
    'Pathanamthitta',
    'Trivandrum',
    'Thrissur',
    'Wayanad',
  ];
  var taluka = [
    'Select',
    'Kozhikode',
    'Quilandy',
    'Thamarassery',
    'Vadakara',
  ];
  var Village = [
    'Beypore(CT)',
    'Chathamangalam',
    'Chelannur',
    'Cheruvannur',
    'Feroke(CT)',
  ];

  String dropdownvalue = 'KOZHIKODE-KL11';
  String districtvalue = 'Kasargod';
  String talukavalue= 'Kozhikode';
  String villagevalue= 'Beypore(CT)';
  String classvalue= 'Motor cycle without Gear(MCWOG)';
   TextEditingController guardiannamecontroller=TextEditingController();
   final placeofbirthcontroller=TextEditingController();
   final dobcontroller=TextEditingController();
   final controller=TextEditingController();
   final pincodecontroller=TextEditingController();
   final agecontroller=TextEditingController();
   final permanantaddresscontroller=TextEditingController();
   final qualificationcontroller=TextEditingController();
   final identification1controller=TextEditingController();
   final identification2controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: c1,
        appBar: AppBar(
          title:
              Text('Application Form', style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 98, 204, 236),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: h! * 0.85,
                  width: w! * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          child: Center(
                              child: Text(
                            'Forms to be filled mantatory',
                            style: TextStyle(color: Colors.white),
                          )),
                          width: w! * 0.9,
                          color: Color.fromARGB(255, 164, 185, 226),
                          height: 50,
                        ),
                        Column(
                          children: [
                            h30,
                            Container(
                              height: 40,
                              width: w!*0.8,
                              decoration: BoxDecoration(border: Border.all(style: BorderStyle.none),borderRadius: BorderRadius.circular(7),color: Color.fromARGB(179, 239, 212, 212)),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  hint: Text("Select RTO"),
                                  value : dropdownvalue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                
                                  // Array list of items
                                  items: rtos.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            h10,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("Permanent Address"),
                                ),
                              ],
                            ),
                            h10,
                            Container(
                              height: 40,
                              width: w!*0.8,
                              decoration: BoxDecoration(border: Border.all(style: BorderStyle.none),borderRadius: BorderRadius.circular(7),color: Color.fromARGB(179, 239, 212, 212)),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  hint: Text("Select Districts"),
                                  value: districtvalue,
                                
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                
                                  items: Districts.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      districtvalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            h10,
                            Container(
                              height: 40,
                              width: w!*0.8,
                              decoration: BoxDecoration(border: Border.all(style: BorderStyle.none),borderRadius: BorderRadius.circular(7),color: Color.fromARGB(179, 239, 212, 212)),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  hint: Text("Select Taluka"),
                                  value: talukavalue,
                                
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                
                                  items: taluka.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      talukavalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            h10,
                            Container(
                              height: 40,
                              width: w!*0.8,
                              decoration: BoxDecoration(border: Border.all(style: BorderStyle.none),borderRadius: BorderRadius.circular(7),color: Color.fromARGB(179, 239, 212, 212)),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  hint: Text("Select Village"),
                                  value: villagevalue,
                                
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                
                                  // Array list of items
                                  items: Village.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      villagevalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),h10,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Identification Marks."),
                                ),
                              ],
                            ),
                            Container(
                              width: w!*0.8,
                              child: Row(
                                children: [
                                  Text("1."),w5,
                                  Expanded(
                                    child: CupertinoTextField(
                                      controller: identification1controller,
                                      
                                    ),
                                    
                                  ),
                                ],
                              ),
                            ),h10,
                            Container(
                              width: w!*0.8,
                              child: Row(
                                children: [
                                  Text("2."),w5,
                                  Expanded(
                                    child: CupertinoTextField(
                                      controller: identification2controller,
                                      
                                    ),
                                    
                                  ),
                                ],
                              ),
                            ),
                            h10,
                            Container(
                              height: 40,
                              width: w!*0.8,
                              decoration: BoxDecoration(border: Border.all(style: BorderStyle.none),borderRadius: BorderRadius.circular(7),color: Color.fromARGB(179, 239, 212, 212)),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  hint: Text("Select class"),
                                  value: classvalue,
                                
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                
                                  items: vehicleclass.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items,style: TextStyle(fontSize: 13),),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      classvalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                           Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Guardian name"),
                                ),
                              ],
                            ),
                            Container(
                              width: w!*0.8,
                              child: Row(
                                children: [
                                  Text(""),w5,
                                  Expanded(
                                    child: CupertinoTextField(
                                      controller: guardiannamecontroller,
                                      
                                    ),
                                    
                                  ),
                                ],
                              ),
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Age"),
                                ),
                              ],
                            ),
                            Container(
                              width: w!*0.8,
                              child: Row(
                                children: [
                                  Text(""),w5,
                                  Expanded(
                                    child: CupertinoTextField(
                                      controller: agecontroller,
                                      
                                    ),
                                    
                                  ),
                                ],
                              ),
                            ), Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("dob"),
                                ),
                              ],
                            ),
                            Container(
                              width: w!*0.8,
                              child: Row(
                                children: [
                                  Text(""),w5,
                                  Expanded(
                                    child: CupertinoTextField(
                                      
                                      controller: dobcontroller,
                                    ),
                                    
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("place of birth"),
                                ),
                              ],
                            ),
                            Container(
                              width: w!*0.8,
                              child: Row(
                                children: [
                                  Text(""),w5,
                                  Expanded(
                                    child: CupertinoTextField(
                                      controller: placeofbirthcontroller,
                                      
                                    ),
                                    
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("pincode"),
                                ),
                              ],
                            ),
                            Container(
                              width: w!*0.8,
                              child: Row(
                                children: [
                                  Text(""),w5,
                                  Expanded(
                                    child: CupertinoTextField(
                                     controller: pincodecontroller, 
                                    ),
                                    
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Qualification"),
                                ),
                              ],
                            ),
                            Container(
                              width: w!*0.8,
                              child: Row(
                                children: [
                                  Text(""),w5,
                                  Expanded(
                                    child: CupertinoTextField(
                                      controller: qualificationcontroller,
                                      
                                    ),
                                    
                                  ),
                                ],
                              ),
                            ),
                            h30,
                            InkWell(onTap: (){
                              learnersapply();
                            },
                              child: Container(
                                child: Center( 
                                    child: Text(
                                  'APPLY LL TEST',
                                  style: TextStyle(color: Colors.white),
                                )),
                                color: Color.fromARGB(255, 98, 204, 236),
                                width: 300,
                                height: 50,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
  learnersapply() async{
    final user = LernersApply(rto: dropdownvalue, permanentaddress: permanantaddresscontroller.text, district: districtvalue, taluk: talukavalue, village: villagevalue, identification1: identification1controller.text, identification2: identification2.text, classs: classvalue, guardianname:guardiannamecontroller.text , dob: dobcontroller.text, placeofbirth: placeofbirthcontroller.text, pincode: pincodecontroller.text, qualification: qualificationcontroller.text, age: agecontroller.text,);
    final res = await learnersapplyApi(user);
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
  }
}
