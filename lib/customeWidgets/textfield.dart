import 'package:flutter/material.dart';

class CustomeTextfield extends StatelessWidget {
  const CustomeTextfield({super.key, required this.username, this.controller, this.validator, this.prifix, this.suffix});
  final username;
  final controller;
  final validator;
  final prifix;
  final suffix;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          labelText: username,
          prefixIcon: prifix??SizedBox(),
          suffixIcon: suffix??SizedBox(),
          
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
    );
  }
}
