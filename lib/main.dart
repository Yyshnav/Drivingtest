import 'package:driving_test_automation/Apicheck.dart';
import 'package:driving_test_automation/RTO/container.dart';
import 'package:driving_test_automation/RTO/requestlist.dart';
import 'package:driving_test_automation/RTO/rtohom1.dart';
import 'package:driving_test_automation/forgotpass.dart';
import 'package:driving_test_automation/user/screens/DLapplication.dart';
import 'package:driving_test_automation/user/screens/LLtest.dart';
import 'package:driving_test_automation/user/screens/cardpayment.dart';
import 'package:driving_test_automation/user/screens/changepass.dart';
import 'package:driving_test_automation/user/screens/help..dart';
import 'package:driving_test_automation/user/screens/instructions.dart';
import 'package:driving_test_automation/user/screens/login.dart';
import 'package:driving_test_automation/user/screens/loginNew.dart';
import 'package:driving_test_automation/user/screens/nearby.dart';
import 'package:driving_test_automation/user/screens/payment.dart';
import 'package:driving_test_automation/rtodemohome.dart';
import 'package:driving_test_automation/RTO/rtohome.dart';
import 'package:driving_test_automation/user/screens/bottomNavBar.dart';
import 'package:driving_test_automation/user/screens/homescreen.dart';
import 'package:driving_test_automation/user/screens/datePicker.dart';
import 'package:driving_test_automation/listview.dart';
import 'package:driving_test_automation/listviewbulider.dart';
import 'package:driving_test_automation/user/screens/upi.dart';
import 'package:driving_test_automation/user/screens/userprofile.dart';
import 'package:driving_test_automation/user/screens/usr_registraion.dart';
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
      //ApiCheckScreen()
      //ForgotPasswordPage()
    // changepass()
     //Exam()
    //OtpScreen()
     AuthThreePage1()
      //DateOfBirth()
      //HomeScreen()
      //HomeScreen()
      //Instructions()
      //Documents()
      //Cardpayment()
      //Rtohom()
      
      
    );
  }
}