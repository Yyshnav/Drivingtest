import 'package:driving_test_automation/RTO/container.dart';
import 'package:driving_test_automation/RTO/requestlist.dart';
import 'package:driving_test_automation/RTO/rtohom1.dart';
import 'package:driving_test_automation/user/models/screens/DLapplication.dart';
import 'package:driving_test_automation/user/models/screens/LLtest.dart';
import 'package:driving_test_automation/user/models/screens/cardpayment.dart';
import 'package:driving_test_automation/user/models/screens/help..dart';
import 'package:driving_test_automation/user/models/screens/instructions.dart';
import 'package:driving_test_automation/login1.dart';
import 'package:driving_test_automation/user/models/screens/nearby.dart';
import 'package:driving_test_automation/user/models/screens/payment.dart';
import 'package:driving_test_automation/rtodemohome.dart';
import 'package:driving_test_automation/RTO/rtohome.dart';
import 'package:driving_test_automation/user/models/screens/bottomNavBar.dart';
import 'package:driving_test_automation/user/models/screens/homescreen.dart';
import 'package:driving_test_automation/user/models/screens/datePicker.dart';
import 'package:driving_test_automation/listview.dart';
import 'package:driving_test_automation/listviewbulider.dart';
import 'package:driving_test_automation/user/models/screens/upi.dart';
import 'package:driving_test_automation/user/models/screens/userprofile.dart';
import 'package:driving_test_automation/user/models/screens/usr_registraion.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      
     // NearBy()
     //Exam()
    
    //Bottom()
      //DateOfBirth()
      //HomeScreen()
      //HomeScreen()
      //Instructions()
      //Documents()
      //Cardpayment()
      //Rtohom()
      ContainerSc()
      
    );
  }
}