import 'package:flutter/material.dart';

class Listviewbuilder extends StatelessWidget {
  Listviewbuilder({super.key});

List<String> names=['vaishnav','anu','avinash','arun','amal'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list'),
  
      ),
      body: ListView.separated( separatorBuilder: (context, index) => Divider(), itemBuilder: (context, index) => Column(
        children: [
          Container(height:100 ,
          width: double.infinity,
          color:Colors.red,
          child: Text(names[index]),
          ),
          Divider()
        ],
      ),
       itemCount: 5,
     ),
      

    );
  }
}