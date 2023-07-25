import 'package:cackle_chat/navigation/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
