import 'dart:convert';
import 'package:driving_test_automation/constants/urls.dart';
import 'package:driving_test_automation/user/models/userRegmodel.dart';
import 'package:http/http.dart' as http;

Future<String>userregisterApi(Userreg item) async {
  print(item.aadhar_number);
  print(item.dob);
  print(item.email);
  print(item.gender);
  print(item.imagepath);
  print(item.password);
  print(item.username);
  
  try {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('$baseUrl/userregister'),
    );

    request.fields['username'] = item.username;
    request.fields['aadharnumber'] = item.aadhar_number;
    request.fields['dob'] = item.dob;
    request.fields['gender'] = item.gender;
    request.fields['password'] = item.password;
    request.fields['email'] = item.email;

    request.files.add(await http.MultipartFile.fromPath(
      'image',
      item.imagepath
    ));
    var response = await request.send();
    if (response.statusCode >= 200 || response.statusCode <300) {
      print('User added successfully');
      return "success";
    } else {
      print('Failed to add : ${response.statusCode}');
      return "failed";
    }
  } catch (e) {
    print('Error adding: $e');
    return "failed";
  }
}