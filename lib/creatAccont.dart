// import 'package:flutter/material.dart';
// import 'package:todo_app_e/login_screen.dart';
//
// class SignUpScreen extends StatelessWidget {
//   static const String routeName = "signup";
//   var formkey = GlobalKey<FormState>();
//   var nameControler = TextEditingController();
//
//   var EmailControler = TextEditingController();
//
//   var AgeControler = TextEditingController();
//
//   var passwordControler = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         appBar: AppBar(
//           title: Text("CreatAccount", style: TextStyle(fontSize: 22)),
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
//               key: formkey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextFormField(
//                       controller: nameControler,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "please enter Name";
//                         }
//                       },
//                       decoration: InputDecoration(
//                         label: Text("Name"),
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
//                       controller: EmailControler,
//                       validator: (value) {
//                         final bool emailvalid = RegExp(
//                                 r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                             .hasMatch(value!);
//                         if (value == null || value.isEmpty) {
//                           return "please enter Email";
//                         } else if (!emailvalid) {
//                           return "please enter valid email ";
//                         }
//                       },
//                       decoration: InputDecoration(
//                         label: Text("Email Address"),
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
//                       controller: passwordControler,
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
//                     height: 20,
//                   ),
//                   TextFormField(
//                       controller: AgeControler,
//                       keyboardType: TextInputType.number,
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return "please enter Age";
//                         } else if (value.length < 6) {
//                           return "please enter age";
//                         }
//                       },
//                       decoration: InputDecoration(
//                         label: Text("Age"),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide(color: Colors.blueAccent)),
//                         enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12),
//                             borderSide: BorderSide(color: Colors.blueAccent)),
//                       )),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (formkey.currentState!.validate()) {}
//                     },
//                     child: Text("SignUp"),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         "I have An Accont ?",
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
//                               context, LoginScreen.routeName);
//                         },
//                         child: Text("Login ",
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
