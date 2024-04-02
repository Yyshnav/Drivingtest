import 'package:flutter/material.dart';

class ContainerSc extends StatelessWidget {
  const ContainerSc({super.key});

  @override
      Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.red,
        body:  Container( 
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text("HI"),
              Container(
                  height:670.0,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(
                            MediaQuery.of(context).size.width, 100.0)),
                      
                  ),
                ),
            ],
          ),

        ),
        
      );
    }
}