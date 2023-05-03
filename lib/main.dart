import 'package:cackle_chat/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:cackle_chat/screens/welcome_screen.dart';
import 'package:cackle_chat/screens/login_screen.dart';
import 'package:cackle_chat/screens/registration_screen.dart';
import 'package:cackle_chat/screens/chat_screen.dart';

void main() {
  runApp(MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routeInformationParser: AppRouter().router.routeInformationParser,
    routerDelegate: AppRouter().router.routerDelegate,
    title: 'Cackle!',
    // theme: ThemeData.dark().copyWith(
    //   textTheme: const TextTheme(
    //     bodyLarge: TextStyle(color: Colors.black54),
    //   ),
    // ),
  ));
}

// class CackleChat extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.dark().copyWith(
//         textTheme: TextTheme(
//           bodyText1: TextStyle(color: Colors.black54),
//         ),
//       ),
//       home: WelcomeScreen(),
//     );
//   }
// }
