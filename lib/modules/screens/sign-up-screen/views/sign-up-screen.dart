// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
//
// import '../../login-screen/controller/login-controller.dart';
// import '../../login-screen/view/constant/const.dart';
// import 'constant/string.dart';
//
// class SignUpScreen extends StatelessWidget {
//   SignUpScreen({super.key});
//
//   final _talkKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Container(
//         padding: const EdgeInsets.only(left: 20, right: 20),
//         child: SafeArea(
//           child: Form(
//             key: _talkKey,
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Container(
//                     alignment: Alignment.topLeft,
//                     height: h / 4.5,
//                     padding: const EdgeInsets.only(top: 20),
//                     child: const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Create your',
//                           style: TextStyle(
//                             fontSize: 37,
//                           ),
//                         ),
//                         Text(
//                           'Account',
//                           style: TextStyle(
//                             fontSize: 37,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 3,
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           onSaved: (String? val) {
//                             s_emailCon.text = val!;
//                           },
//                           validator: (value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter some text';
//                             }
//                             return null;
//                           },
//                           keyboardType: TextInputType.emailAddress,
//                           controller: s_emailCon,
//                           decoration: const InputDecoration(
//                             labelText: 'Email',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(10),
//                               ),
//                               borderSide: BorderSide(
//                                 width: 5,
//                               ),
//                             ),
//                             prefixIcon: Padding(
//                               padding: EdgeInsets.all(0.0),
//                               child: Icon(
//                                 Icons.email_outlined,
//                               ), // icon is 48px widget.
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: h / 45,
//                         ),
//                         TextFormField(
//                           onSaved: (String? val) {
//                             s_passCon.text = val!;
//                           },
//                           validator: (value) {
//                             if (value!.length < 6) {
//                               return 'Password is too short';
//                             }
//                             return null;
//                           },
//                           controller: s_passCon,
//                           decoration: InputDecoration(
//                             labelText: 'Password',
//                             border: const OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(10),
//                               ),
//                               borderSide: BorderSide(
//                                 width: 10,
//                               ),
//                             ),
//                             prefixIcon: Padding(
//                               padding: const EdgeInsets.all(0.0),
//                               child: IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(
//                                   Icons.visibility,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           obscureText: true,
//                         ),
//                         SizedBox(
//                           height: h / 45,
//                         ),
//                         TextFormField(
//                           onSaved: (String? val) {
//                             s_conPassCon.text = val!;
//                           },
//                           validator: (value) {
//                             if (value!.length < 6) {
//                               return 'Password is too short';
//                             }
//                             return null;
//                           },
//                           controller: s_conPassCon,
//                           decoration: InputDecoration(
//                             labelText: 'Conform Password',
//                             border: const OutlineInputBorder(
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(10),
//                               ),
//                               borderSide: BorderSide(
//                                 width: 10,
//                               ),
//                             ),
//                             prefixIcon: Padding(
//                               padding: const EdgeInsets.all(0.0),
//                               child: IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(
//                                   Icons.visibility,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           obscureText: true,
//                         ),
//                         SizedBox(
//                           height: h / 45,
//                         ),
//                         GestureDetector(
//                           onTap: () async {
//                             FocusScope.of(context).unfocus();
//                             if (_talkKey.currentState!.validate() &&
//                                 s_passCon.text == s_conPassCon.text) {
//                               signUp(
//                                 email: s_emailCon.text,
//                                 password: s_passCon.text,
//                               );
//                               s_emailCon.clear();
//                               s_passCon.clear();
//                               s_conPassCon.clear();
//                             } else {}
//                           },
//                           child: GetBuilder<LoginController>(
//                             builder: (controller) {
//                               return Container(
//                                 alignment: Alignment.center,
//                                 margin: const EdgeInsets.all(5),
//                                 width: w / 1.5,
//                                 height: h / 13,
//                                 decoration: BoxDecoration(
//                                   color: (Get.isDarkMode == true)
//                                       ? Colors.white
//                                       : Colors.black,
//                                   borderRadius: const BorderRadius.all(
//                                     Radius.circular(10),
//                                   ),
//                                 ),
//                                 child: controller.isLoading
//                                     ? CircularProgressIndicator(
//                                         valueColor:
//                                             AlwaysStoppedAnimation<Color>(
//                                           (Get.isDarkMode == true)
//                                               ? Colors.black
//                                               : Colors.white,
//                                         ),
//                                       )
//                                     : Text('Sign Up',
//                                         style: TextStyle(
//                                           color: (Get.isDarkMode == true)
//                                               ? Colors.black
//                                               : Colors.white,
//                                           fontSize: 22,
//                                         )),
//                               );
//                             },
//                           ),
//                         ),
//                         SizedBox(
//                           height: h / 120,
//                         ),
//                         loginStack(),
//                         SizedBox(
//                           height: h / 120,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             loginContainer(
//                                 img: 'lib/assets/google.png', context: context),
//                             SizedBox(
//                               width: w / 10,
//                             ),
//                             loginContainer(
//                                 img: (Get.isDarkMode == true)
//                                     ? 'lib/assets/github-white.png'
//                                     : 'lib/assets/github-black.png',
//                                 context: context),
//                             SizedBox(
//                               width: w / 10,
//                             ),
//                             GestureDetector(
//                               onTap: anonymous,
//                               child: loginContainer(
//                                   img: (Get.isDarkMode == true)
//                                       ? 'lib/assets/guest-white.png'
//                                       : 'lib/assets/guest-black.png',
//                                   context: context),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'Already have an account? ',
//                       style: TextStyle(
//                         fontSize: 16,
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Get.back();
//                       },
//                       child: const Text(
//                         'Sign in',
//                         style: TextStyle(
//                           fontSize: 16,
//                           decoration: TextDecoration.underline,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: h / 50,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
