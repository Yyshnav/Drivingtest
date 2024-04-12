
// import 'package:driving_test_automation/user/screens/bottomNavBar.dart';
// import 'package:driving_test_automation/user/services/loginapi.dart';
// import 'package:flutter/material.dart';
// // import 'package:driving_test_automation/login.dart';

// class AuthThreePage extends StatefulWidget {
//   static const String path = "lib/src/pages/login/auth3.dart";

//    AuthThreePage({super.key});
  



//   @override
//   _AuthThreePageState createState() => _AuthThreePageState();
// }

// class _AuthThreePageState extends State<AuthThreePage> {
//   //final String backImg = room4;
//   late bool formVisible;
//   int? _formsIndex;

//   @override
//   void initState() {
//     super.initState();
//     formVisible = false;
//     _formsIndex = 1;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//               decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: NetworkImage("https://learn.g2.com/hubfs/iStock-1163061322.jpg"),
//           fit: BoxFit.cover,
//         ),
//               ),
//               child: Stack(
//         children: <Widget>[
//           ListView(
//             children: [
//               Container(
//                 color: Colors.black54,
//                 child: Column(
//                   children: <Widget>[
//                     const SizedBox(height: kToolbarHeight + 40),
//                     Expanded(
//                       child: Column(
//                         children: const <Widget>[
//                           Text(
//                             "Welcome",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w500,
//                               fontSize: 30.0,
//                             ),
//                           ),
//                           SizedBox(height: 10.0),
//                           Text(
//                             "Welcome to Our App. \n Keep calm \n  Drive on",
//                             style: TextStyle(
//                               color: Colors.white70,
//                               fontSize: 18.0,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 10.0),
//                     Row(
//                       children: <Widget>[
//                         const SizedBox(width: 10.0),
//                         Expanded(
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.red,
//                               foregroundColor: Colors.white,
//                               elevation: 0,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0),
//                               ),
//                             ),
//                             child: const Text("Login"),
//                             onPressed: () {
//                               setState(() {
//                                 formVisible = true;
//                                 _formsIndex = 1;
//                               });
//                             },
//                           ),
//                         ),
//                         const SizedBox(width: 10.0),
//                         Expanded(
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.grey.shade700,
//                               foregroundColor: Colors.white,
//                               elevation: 0,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20.0),
//                               ),
//                             ),
//                             child: const Text("Signup"),
//                             onPressed: () {
//                               setState(() {
//                                 formVisible = true;
//                                 _formsIndex = 2;
//                               });
//                             },
//                           ),
//                         ),
//                         const SizedBox(width: 10.0),
//                       ],
//                     ),
//                     const SizedBox(height: 40.0),
//                     // OutlinedButton.icon(
//                     //   style: OutlinedButton.styleFrom(
//                     //     side: const BorderSide(color: Colors.red),
//                     //     backgroundColor: Colors.red,
//                     //     foregroundColor: Colors.white,
//                     //     shape: RoundedRectangleBorder(
//                     //       borderRadius: BorderRadius.circular(20.0),
//                     //     ),
//                     //   ),
//                     //   icon: const Icon(FontAwesomeIcons.google),
//                     //   label: const Text("Continue with Google"),
//                     //   onPressed: () {},
//                     // ),
//                     const SizedBox(height: 20.0),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           AnimatedSwitcher(
//             duration: const Duration(milliseconds: 200),
//             child: (!formVisible)
//                 ? null
//                 : Container(
//                     color: Colors.black54,
//                     alignment: Alignment.center,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 foregroundColor: _formsIndex == 1
//                                     ? Colors.white
//                                     : Colors.black,
//                                 backgroundColor: _formsIndex == 1
//                                     ? Colors.red
//                                     : Colors.white,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(20.0)),
//                               ),
//                               child: const Text("Login"),
//                               onPressed: () {
                                
//                                 setState(() {
//                                   _formsIndex = 1;
//                                 });
//                               },
//                             ),
//                             const SizedBox(width: 10.0),
//                             ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                 foregroundColor: _formsIndex == 2
//                                     ? Colors.white
//                                     : Colors.black,
//                                 backgroundColor: _formsIndex == 2
//                                     ? Colors.red
//                                     : Colors.white,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(20.0)),
//                               ),
//                               child: const Text("Signup"),
//                               onPressed: () {
//                                 setState(() {
//                                   _formsIndex = 2;
//                                 });
//                               },
//                             ),
//                             const SizedBox(width: 10.0),
//                             IconButton(
//                               color: Colors.white,
//                               icon: const Icon(Icons.clear),
//                               onPressed: () {
//                                 setState(() {
//                                   formVisible = false;
//                                 });
//                               },
//                             )
//                           ],
//                         ),
//                         AnimatedSwitcher(
//                           duration: const Duration(milliseconds: 300),
//                           child:
//                               _formsIndex == 1 ?  LoginForm() : SignupForm(),
//                         )
//                       ],
//                     ),
//                   ),
//           )
//         ],
//               ),
//             ));
//   }
// }

// class LoginForm extends StatelessWidget {
//   LoginForm({
//     Key? key,
//   }) : super(key: key);

//   TextEditingController usernamecontroller= TextEditingController();
//   TextEditingController passwordcontroller= TextEditingController();
//   final _formkey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formkey,
//       child: Container(
//         margin: const EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16.0),
//         ),
//         child: ListView(
//           shrinkWrap: true,
//           padding: const EdgeInsets.all(16.0),
//           children: <Widget>[
//              TextFormField(
//               validator: (value) {
//                 if (value == null || value == "") {
//                   return "field cant be empty";
//                 }
//                 else{
//                   return null;
//                 }
//               },
//               controller: usernamecontroller,
//               decoration: InputDecoration(
//                 hintText: "Enter username",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 10.0),
//              TextFormField(
//               validator: (value) {
//                 if (value == "" || value!.isEmpty) {
//                   return " field cant be empty";
//                   }
//                   if(value.length <6){
//                     return "enter min 6 digit password";
//                   }
//                   else{
//                     return null;
//                   }
//               },
//               controller: passwordcontroller,
//               obscureText: true,
//               decoration: InputDecoration(
//                 hintText: "Enter password",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 10.0),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red,
//                 foregroundColor: Colors.white,
//                 elevation: 0,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//               ),
//               child: const Text("Login"),
//               onPressed: () {
//                 loginclicked(context);
//                 loginApicall(usernamecontroller.text, passwordcontroller.text);
//                 //Navigator.of(context).push(MaterialPageRoute(builder: (context) => Bottom(),));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

// loginclicked(BuildContext context) async{
//   final res = await loginApicall(usernamecontroller.text, passwordcontroller.text);
//   if(res !=null)
//   {
//     if(res.type=="user"){
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Bottom(),));

//     }
//     else if(res.type=="rto"){
//           Navigator.of(context).push(MaterialPageRoute(builder: (context) => Bottom(),));

//     }
//   }
//   else{
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 content: Text("something went wrong"),
//                 backgroundColor: Colors.red,
//                 behavior: SnackBarBehavior.floating,
//                 margin: EdgeInsets.all(10),
//                 duration: Duration(seconds: 8)));
//   }
// }}



// //signup
// class SignupForm extends StatelessWidget {
//   SignupForm({
//     Key? key,
//   }) : super(key: key);

//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {

//     final h = MediaQuery.of(context).size.height;

//     return SingleChildScrollView(
//       child: Container(
//         height: h*0.7,
//         margin: const EdgeInsets.all(16.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16.0),
//         ),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             shrinkWrap: true,
//             padding: const EdgeInsets.all(16.0),
//             children: <Widget>[
//                TextFormField(
//                 validator: (value) {
//                 if (value == "" || value!.isEmpty) {
//                   return " field cant be empty";
//                   }
//                   else{
//                     return null;
//                   }
//               },
//                 decoration: InputDecoration(
//                   hintText: "Enter username",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10.0),
//                TextFormField(
//                 validator: (value) {
//                 if (value == "" || value!.isEmpty) {
//                   return " field cant be empty";
//                   }
//                   if(value.length <6){
//                     return "enter min 6 digit password";
//                   }
//                   else{
//                     return null;
//                   }
//               },
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: "Enter password",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10.0),
//                TextFormField(
//                  validator: (value) {
//                 if (value == "" || value!.isEmpty) {
//                   return " field cant be empty";
//                   }
//                   else{
//                     return null;
//                   }
//               },
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: "Enter email",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10.0),
//                TextFormField(
//                  validator: (value) {
//                 if (value == "" || value!.isEmpty) {
//                   return " field cant be empty";
//                   }
//                   else{
//                     return null;
//                   }
//               },
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: "Enter address",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10.0),
//                TextFormField(
//                  validator: (value) {
//                 if (value == "" || value!.isEmpty) {
//                   return " field cant be empty";
//                   }
//                   else{
//                     return null;
//                   }
//               },
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: "Enter aadharnumber",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10.0),
//                TextFormField(
//                  validator: (value) {
//                 if (value == "" || value!.isEmpty) {
//                   return " field cant be empty";
//                   }
//                   else{
//                     return null;
//                   }
//               },
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: "Enter dob",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10.0),
//               TextFormField(
//                  validator: (value) {
//                 if (value == "" || value!.isEmpty) {
//                   return " field cant be empty";
//                   }
//                   else{
//                     return null;
//                   }
//               },
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: "Enter bloodgroup",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 10.0),
//                TextFormField(
//                  validator: (value) {
//                 if (value == "" || value!.isEmpty) {
//                   return " field cant be empty";
//                   }
//                   else{
//                     return null;
//                   }
//               },
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: "Enter gender",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
              
             
//               const SizedBox(height: 10.0),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                   foregroundColor: Colors.white,
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                   ),
//                 ),
//                 child: const Text("Signup"),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }