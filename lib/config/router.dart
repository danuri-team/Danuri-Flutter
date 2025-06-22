import 'package:danuri_flutter/view/authentication_number_input/screen/authentication_number_input_screen.dart';
import 'package:danuri_flutter/view/home/screen/home_screen.dart';
import 'package:danuri_flutter/view/login/screen/login_screen.dart';
import 'package:danuri_flutter/view/signup/screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: 'signup',
      path: '/signup',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      name: 'authentication_number_input',
      path: '/authentication_number_input',
      builder:(context, state) => const AuthenticationNumberInputScreen(),
    ),
  ],
);
