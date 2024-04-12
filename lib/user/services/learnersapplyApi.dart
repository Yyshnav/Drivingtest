import 'dart:async';
import 'dart:convert';
import 'package:driving_test_automation/constants/constantVariables.dart';
import 'package:driving_test_automation/user/models/learnersApplyModel.dart';
import 'package:driving_test_automation/user/models/loginmodel.dart';
import 'package:http/http.dart' as http;

 Future<String?> learnersapplyApi(LernersApply l1) async {
  var client = http.Client();
  final url= Uri.parse("http://192.168.1.22:5000/learnersapply");
  try {
    final response= await client.post(url,
    body: {"rto":l1.rto,
      "permanentaddress":l1.permanentaddress,
      "district":l1.district,
      "taluk":l1.taluk,
      "village":l1.village,
    "identification1":l1.identification1,
    "identification2":l1.identification2,
    "classs":l1.classs,
    "guardianname":l1.guardianname,
    "dob":l1.dob,
    "placeofbirth":l1.placeofbirth,
    "pincode":l1.pincode,
    "qualification":l1.qualification,
    "age":l1.age,
    "login_id":lid,
    });
    if(response.statusCode>=200 || response.statusCode<300){
      final body = jsonDecode(response.body);
      print(body);
      return "success";
    }
    else{
      print("api call error");
      return null;
    }
    
  } catch (e) {
    print(e);
    return null;
  }
}
