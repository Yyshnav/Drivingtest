import 'dart:async';
import 'dart:convert';
import 'package:driving_test_automation/user/models/drivingapplyapi.dart';
import 'package:driving_test_automation/user/models/loginmodel.dart';
import 'package:http/http.dart' as http;

Future<Loginmodel?> drivingapplyApi(drvingapply dl) async {
  var client = http.Client();
  final url = Uri.parse("http://192.168.1.22:5000/drivinglicenceapply");
  try {
    final request = http.MultipartRequest(
      'POST',
      url,
    );

    request.fields['learnersid'] = dl.learnersid;
    request.fields['dob'] = dl.dob;
     request.files.add(await http.MultipartFile.fromPath(
      'photo',
     dl.fn,
    ));
    
    request.files.add(await http.MultipartFile.fromPath(
      'signature',
      dl.sn,
    ));
      request.files.add(await http.MultipartFile.fromPath(
      'fitnessform',
    dl.ft
    ));
     request.files.add(await http.MultipartFile.fromPath(
      'medicalform',
      dl.mf
    ));
    request.fields['age'] = dl.age;
    request.fields['logid'] = dl.logid;
    var response = await request.send();

    if (response.statusCode >= 200 || response.statusCode < 300) {
      //final body = jsonDecode(re);
    } else {
      print("api call error");
      return null;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

// import 'dart:convert';
// import 'package:easydiagno/Constants/Colors.dart';
// import 'package:easydiagno/Models/HospitalModel/hospitalReg1Model.dart';
// import 'package:http/http.dart' as http;

// Future<String> hospitalregistration(HospitalregModel item) async {
//   final address = jsonEncode({
//     "AddressLine": item.addressLine,
//     "PinCode": item.pinCode,
//     "Country": "Bharat",
//     "City": item.city,
//     "State": item.state
//   });
//   try {
    // var request = http.MultipartRequest(
    //   'POST',
    //   Uri.parse('$baseUrl/hospitalregistration'),
    // );

//     request.fields['HospitalName'] = item.hname;
//     request.fields['Email'] = item.email;
//     request.fields['LiscenceNumber'] = item.liscenceNum;
//     request.fields['Address'] = address;
//     request.fields['phone'] = item.phone;
//     request.files.add(await http.MultipartFile.fromPath(
//       'img',
//       item.imagePath.path,
//     ));
//     var response = await request.send();
//     if (response.statusCode == 200 || response.statusCode == 201) {
//       print('Hospital added successfully');
//       return "success";
//     } else {
//       print('Failed to add menu item: ${response.statusCode}');
//       return "failed";
//     }
//   } catch (e) {
//     print('Error adding menu item: $e');
//     return "failed";
//   }
// }
