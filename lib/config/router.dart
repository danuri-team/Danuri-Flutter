import 'package:danuri_flutter/view/auth_code_login/screen/auth_code_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/auth-code-login',
  routes: [
    GoRoute(
      name: 'auth-code-login',
      path: '/auth-code-login',
      builder: (context, state){
        return const AuthCodeLoginScreen();
      },
    ),
  ],
);
