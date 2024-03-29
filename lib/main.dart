import 'package:driving_test_automation/DLapplication.dart';
import 'package:driving_test_automation/LLtest.dart';
import 'package:driving_test_automation/cardpayment.dart';
import 'package:driving_test_automation/help..dart';
import 'package:driving_test_automation/instructions.dart';
import 'package:driving_test_automation/login1.dart';
import 'package:driving_test_automation/nearby.dart';
import 'package:driving_test_automation/payment.dart';
import 'package:driving_test_automation/screens/bottomNavBar.dart';
import 'package:driving_test_automation/screens/homescreen.dart';
import 'package:driving_test_automation/datePicker.dart';
import 'package:driving_test_automation/listview.dart';
import 'package:driving_test_automation/listviewbulider.dart';
import 'package:driving_test_automation/login.dart';
import 'package:driving_test_automation/numberapi.dart';
import 'package:driving_test_automation/upi.dart';
import 'package:driving_test_automation/userprofile.dart';
import 'package:driving_test_automation/usr_registraion.dart';
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
      Screen()
    );
  }
}