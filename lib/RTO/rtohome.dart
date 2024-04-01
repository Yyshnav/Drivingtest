import 'package:driving_test_automation/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';


class ChartData {
  final String x;
  final double y;
  final Color color;

  ChartData(this.x, this.y, this.color);
}


class Rtohome extends StatefulWidget {
  const Rtohome({super.key});

  @override
  State<Rtohome> createState() => _RtohomeState();
}

class _RtohomeState extends State<Rtohome> {
  
  @override
  Widget build(BuildContext context) {
            final List<ChartData> chartData = [
            ChartData('David', 25, Color.fromRGBO(9,0,136,1)),
            ChartData('Steve', 38, Color.fromRGBO(147,0,119,1)),
            ChartData('Jack', 34, Color.fromRGBO(228,0,124,1)),
            ChartData('Others', 52, Color.fromRGBO(255,189,57,1))
        ];
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 37, 198, 248)),
        backgroundColor: Color.fromARGB(255, 247, 248, 249),
        actions: [
          IconButton(onPressed: () {          
          }, icon:Icon(Icons.notifications_active_rounded),
          ),
        ],
      ),
      drawer:  Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Column(
              children: [
                CircleAvatar(radius: 40,),
                Text("GUEST"),
                Text("9744513952")
                
              ],
            )),
            Container(
              child: Row(
                children: [
                  Icon(Icons.person,color: Color.fromARGB(213, 150, 148, 148),),w25,Text("My Profile",),
                ],
              ),
            ),h15,
            Container(
              child: Row(
                children: [
                  Icon(Icons.help_center,color: Color.fromARGB(213, 150, 148, 148)),w25,Text("settings"),
                ],
              ),
            ),h15,
            Container(
              child: Row(
                children: [
                  Icon(Icons.logout_sharp,color: Color.fromARGB(213, 150, 148, 148)),w25,Text("Log out"),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container( decoration: BoxDecoration(
             gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [Color.fromARGB(255, 98, 204, 236), Color.fromARGB(255, 247, 248, 249)], // Specify your gradient colors
            ),
          ),
       
            height: h*0.60,
            width: w,
            child: Column(
              children: [
                Container(
                  child: SfCircularChart(
                            series: <CircularSeries>[
                                DoughnutSeries<ChartData, String>(
                                    dataSource: chartData,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y,
                                    // Radius of doughnut's inner circle
                                    innerRadius: '90%'
                                )
                            ]
                        )
                ),
                h30,
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.circle_outlined,color:Color.fromRGBO(228,0,124,1)),h10,
                        Text(" LL Request",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                      ],
                    ),w20,
                     Column(
                       children: [
                         Icon(Icons.circle_outlined,color:Color.fromRGBO(255,189,57,1)),h10,
                                             Text(" DL Request",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                       ],
                     ),w20,
                    Column(
                      children: [
                        Icon(Icons.circle_outlined,color:Color.fromRGBO(147,0,119,1)),h10,
                        Text(" Approved",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16)),
                      ],
                    ),w30,
                  ],
                ),h70,  Text("RTO office kl-04"),
              ],
            ),
          ),h30,
            Row(children: [
                w10, CircleAvatar(radius: 60,),w25,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome',style: TextStyle(color:Color.fromARGB(227, 90, 88, 88),fontWeight: FontWeight.w800),),
                  Text("GUEST(jrto)",style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.w800),),
                  Text('(email-guest@gmail.com)',style: TextStyle(color:Color.fromARGB(227, 90, 88, 88), fontSize: 15,fontWeight: FontWeight.w800)),
                  Text('(phone-0495-2014578)',style: TextStyle(color:Color.fromARGB(227, 90, 88, 88), fontSize: 12,fontWeight: FontWeight.w800))
                ],
              )],),
          
        ],
        
      ),
    );
  }
}