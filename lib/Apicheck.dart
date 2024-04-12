import 'package:driving_test_automation/constants/constantVariables.dart';
import 'package:driving_test_automation/constants/size.dart';
import 'package:driving_test_automation/user/models/drivingapplyapi.dart';
import 'package:driving_test_automation/user/models/learnersApplyModel.dart';
import 'package:driving_test_automation/user/services/changepassapi.dart';
import 'package:driving_test_automation/user/services/dlapply.dart';
import 'package:driving_test_automation/user/services/learnersapplyApi.dart';
import 'package:driving_test_automation/user/services/loginapi.dart';
import 'package:driving_test_automation/user/services/profileApi.dart';
import 'package:driving_test_automation/user/services/sendFeddback.dart';
import 'package:driving_test_automation/user/services/viewdldetailsapi.dart';
import 'package:driving_test_automation/user/services/viewreplayApi.dart';
import 'package:flutter/material.dart';
import 'package:driving_test_automation/Apicheck.dart';

class ApiCheckScreen extends StatelessWidget {
  const ApiCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          h30,
          ElevatedButton(onPressed: (){
            
          }, child: Text("login")),
          h10,
          ElevatedButton(onPressed: (){
            profileApi("4");
          }, child: Text("profile")),
          h10,
          ElevatedButton(onPressed: (){
            sendfeedbackApi("hi","2024-03-28", "4");
          }, child: Text("sendfeedback")),
          h10,
          ElevatedButton(onPressed: (){
            viewreplayApi("4");
          }, child: Text("viewreplay")),
          h10,
          ElevatedButton(onPressed: (){
            learnersapplyApi(l1);
          }, child: Text("learnersapply")),
          h10,
          ElevatedButton(onPressed: (){
          drivingapplyApi(dl);
          }, child: Text("dlapply")),
          h10,
          ElevatedButton(onPressed: (){
            ChangepassApi("4");

          }, child: Text("changepassword")),
          h10,
          ElevatedButton(onPressed: (){}, child: Text("offer")),

        ],
      ),
    );
  }
}

final l1 = LernersApply(rto:"kl01", permanentaddress: "calicut", district: "calicut", taluk: "kkd", village: "beypore", identification1: "mole1", identification2: "mole2", classs: "lmv", guardianname: "hiww", dob: "14-04-2000", placeofbirth: "clt", pincode: "673015", qualification: "mca", age: "24");
final dl=drvingapply(learnersid: "12345", dob: "14-04-2000", age:"24", logid: "4", fn: '', sn: '', ft: '', mf: '');