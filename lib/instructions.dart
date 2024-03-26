import 'package:driving_test_automation/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c1,
      appBar: AppBar(
        title: Text('Instructions'),
      ),
      body: 
      Column(
        children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Text('Fields to be filled mantatory',style: TextStyle(color: Colors.black),),
                            
                        

                            width:500,
                            height: 500,
                          ),
                        ],
                      ),],),))],
                      ),);
                      }
                             
}