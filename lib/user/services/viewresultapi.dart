import 'dart:async';
import 'dart:convert';
import 'package:driving_test_automation/constants/constantVariables.dart';
import 'package:driving_test_automation/user/models/loginmodel.dart';
import 'package:http/http.dart' as http;



 Future<Loginmodel?> ViewresultApi(String feedback,String date,) async {
  var client = http.Client();
  final url= Uri.parse("http://192.168.1.22:5000/viewresult?logid=$lid");
  try {
    final response= await client.get(url);
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
