import 'package:flutter/material.dart';

class ContainerSc extends StatelessWidget {
  const ContainerSc({super.key});

  @override
      Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 238, 238),
        body:  Container( 
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              
              Container(
                  height:680.0,
                  decoration:  BoxDecoration(
                    color: const Color.fromARGB(255, 207, 25, 25),
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