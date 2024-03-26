import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),

      body: ListView(
        children: [Text('hi'),SizedBox(width:10),Text('hello')]

      ),
    );
  }
}