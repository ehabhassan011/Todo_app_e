// import 'package:flutter/material.dart';
// import 'package:todo_app_e/creatAccont.dart';
//
// class LoginScreen extends StatelessWidget {
//   static const String routeName = "login";
//
//   var usernameController = TextEditingController();
//
//   var passwordController = TextEditingController();
//
//   var formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Login", style: TextStyle(fontSize: 22)),
//           elevation: 0,
//           backgroundColor: Colors.lightBlue,
//           centerTitle: true,
//         ),
//         body: Stack(alignment: Alignment.center, children: [
//           Container(
//             color: Colors.white,
//           ),
//           Image.asset("assets/images/SIGN IN.png",
//               height: double.infinity,
//               width: double.infinity,
//               fit: BoxFit.fill),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Form(
//               key: formKey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextFormField(
//                       controller: usernameController,
//                       validator: (value) {
//                         final bool emailvalid = RegExp(
//                                 r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                             .hasMatch(value!);
//                         if (value == null || value.isEmpty) {
//                           return "please enter userName";
//                         } else if (!emailvalid) {
//                           return "please enter valid email ";
//                         }
//                       },
//                       decoration: InputDecoration(
//                         label: Text("userName"),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide(color: Colors.blueAccent)),
//                         enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide(color: Colors.blueAccent)),
//                       )),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                       controller: passwordController,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "please enter password";
//                         } else if (value.length < 6) {
//                           return "please enter at least 6 char";
//                         }
//                       },
//                       decoration: InputDecoration(
//                         label: Text("password"),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide(color: Colors.blueAccent)),
//                         enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide(color: Colors.blueAccent)),
//                       )),
//                   SizedBox(
//                     height: 9,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (formKey.currentState!.validate()) {}
//                     },
//                     child: Text("Login"),
//                   ),
//                   SizedBox(
//                     height: 60,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         "Dont have An Accont ?",
//                         style: Theme.of(context)
//                             .textTheme
//                             .bodyMedium!
//                             .copyWith(color: Colors.black54, fontSize: 15),
//                       ),
//                       SizedBox(
//                         width: 12,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Navigator.pushReplacementNamed(
//                               context, SignUpScreen.routeName);
//                         },
//                         child: Text("Creat Account",
//                             style: Theme.of(context)
//                                 .textTheme
//                                 .bodyMedium!
//                                 .copyWith(color: Colors.blue, fontSize: 20)),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ]));
//   }
// }
