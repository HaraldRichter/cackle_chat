import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/chat_screen.dart';
import '../screens/login_screen.dart';
import '../screens/registration_screen.dart';
import '../screens/welcome_screen.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: 'welcome',
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: WelcomeScreen(),
          );
        },
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: LoginScreen(),
          );
        },
      ),
      GoRoute(
        name: 'registration',
        path: '/registration',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: RegistrationScreen(),
          );
        },
      ),
      GoRoute(
        name: 'chat',
        path: '/chat',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: ChatScreen(),
          );
        },
      ),
    ],
  );
}
