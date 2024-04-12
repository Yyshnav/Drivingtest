// To parse this JSON data, do
//
//     final ProfileModel = ProfileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel ProfileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String ProfileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
    int aadharno;
    String email;
    String name;
    String dob;
    String gender;
    int loginid;
    String otp;
    String photo;
    int userid;

    ProfileModel({
        required this.aadharno,
        required this.email,
        required this.name,
        required this.dob,
        required this.gender,
        required this.loginid,
        required this.otp,
        required this.photo,
        required this.userid,
    });

    factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        aadharno: json["Aadharno"],
        email: json["Email"],
        name: json["Name"],
        dob: json["dob"],
        gender: json["gender"],
        loginid: json["loginid"],
        otp: json["otp"],
        photo: json["photo"],
        userid: json["userid"],
    );

    Map<String, dynamic> toJson() => {
        "Aadharno": aadharno,
        "Email": email,
        "Name": name,
        "dob": dob,
        "gender": gender,
        "loginid": loginid,
        "otp": otp,
        "photo": photo,
        "userid": userid,
    };
}
