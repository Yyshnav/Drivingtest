import 'dart:async';
import 'dart:convert';
import 'package:driving_test_automation/user/models/profileModel.dart';
import 'package:http/http.dart' as http;

 Future<List<ProfileModel>?> profileApi(String lid) async {
  var client = http.Client();
  final url= Uri.parse("http://192.168.1.22:5000/userprofile?login_id=$lid");
  try {
    final response= await client.get(url);
    print(response.body);
    if(response.statusCode>=200 || response.statusCode<300){
      final body = jsonDecode(response.body);
      final res = (body as List).map((e) => ProfileModel.fromJson(e)).toList();
      return res;
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
