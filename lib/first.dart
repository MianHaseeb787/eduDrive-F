// import 'package:edudrive/login.dart';
// import 'package:edudrive/signup.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class FirstPage extends StatefulWidget {
//   const FirstPage({super.key});

//   @override
//   State<FirstPage> createState() => _FirstPageState();
// }

// class _FirstPageState extends State<FirstPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                   onPressed: (() {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const login()),
//                     );
//                   }),
//                   child: Text('login')),
//               ElevatedButton(
//                   onPressed: (() {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const SignUp()),
//                     );
//                   }),
//                   child: Text('sign up')),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
