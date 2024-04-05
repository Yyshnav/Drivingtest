// To parse this JSON data, do
//
//     final Loginmodel = LoginmodelFromJson(jsonString);

import 'dart:convert';

Loginmodel LoginmodelFromJson(String str) => Loginmodel.fromJson(json.decode(str));

String LoginmodelToJson(Loginmodel data) => json.encode(data.toJson());

class Loginmodel {
    int loginid;
    String task;
    String type;

    Loginmodel({
        required this.loginid,
        required this.task,
        required this.type,
    });

    factory Loginmodel.fromJson(Map<String, dynamic> json) => Loginmodel(
        loginid: json["loginid"],
        task: json["task"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "loginid": loginid,
        "task": task,
        "type": type,
    };
}
