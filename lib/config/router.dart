import 'package:danuri_flutter/view/auth_code_login/screen/auth_code_login_screen.dart';
import 'package:danuri_flutter/view/sign_up/screen/sign_up_screen.dart';
import 'package:danuri_flutter/view/screen/login_screen.dart';
import 'package:danuri_flutter/view/organ_auth/screen/organ_auth_screen.dart';
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
    GoRoute(
      name: 'sign-up',
      path: '/sign-up',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: 'organ-auth',
      path: '/organ-auth',
      builder: (context, state) => const OrganAuthScreen(),
    ),
  ],
);
