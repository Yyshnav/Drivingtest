import 'dart:async';
import 'dart:convert';
import 'package:driving_test_automation/user/models/loginmodel.dart';
import 'package:http/http.dart' as http;



 Future<Loginmodel?> loginApicall(String username,String password) async {
  var client = http.Client();
  final url= Uri.parse("http://192.168.1.22:5000/logincheck?UserName=$username&Password=$password");
  try {
    final response= await client.get(url);
    if(response.statusCode>=200 || response.statusCode<300){
      final body = jsonDecode(response.body);
    if(body["task"] == "success"){
      print("success: $body");
     final res= Loginmodel.fromJson(body);
     return res;
    }
    else{
      print("invalid : $body");
      return null;
    }
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
