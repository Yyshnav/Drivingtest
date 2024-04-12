import 'dart:async';
import 'dart:convert';
import 'package:driving_test_automation/user/models/loginmodel.dart';
import 'package:http/http.dart' as http;



 Future<Loginmodel?> sendfeedbackApi(String feedback,String date,String id) async {
  var client = http.Client();
  final url= Uri.parse("http://192.168.1.22:5000/sendfeedback");
  try {
    final response= await client.post(url,body: {"logid":id,
    "feedback":feedback,"date":date});
    if(response.statusCode>=200 || response.statusCode<300){
      final body = jsonDecode(response.body);
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
