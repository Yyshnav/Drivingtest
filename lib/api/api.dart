import 'package:driving_test_automation/models/numModel.dart';
import 'package:http/http.dart' as http;
import 'package:driving_test_automation/models/model.dart';

import 'dart:convert';
import 'package:http/http.dart'; 

apiCall(int num)async{
  final response=await http.get(Uri.parse('http://numbersapi.com/$num?json'));
  final res= jsonDecode(response.body);
  NumberModel model=NumberModel.fromJson(res);
  return model;
  }