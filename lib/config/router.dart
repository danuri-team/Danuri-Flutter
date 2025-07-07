import 'package:danuri_flutter/view/failure/screen/failure_screen.dart';
import 'package:danuri_flutter/view/completion/screen/completion_screen.dart';
import 'package:danuri_flutter/view/item_rental/screen/item_rental_screen.dart';
import 'package:danuri_flutter/view/register_used_space/screen/register_used_space.dart';
import 'package:danuri_flutter/view/auth_code_login/screen/auth_code_login_screen.dart';
import 'package:danuri_flutter/view/sign_up/screen/sign_up_screen.dart';
import 'package:danuri_flutter/view/login/screen/login_screen.dart';
import 'package:danuri_flutter/view/organ_auth/screen/organ_auth_screen.dart';
import 'package:danuri_flutter/view/home/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'organ-auth',
      path: '/organ-auth',
      builder: (context, state) => const OrganAuthScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      name: 'register-used-space',
      path: '/register-used-space',
      builder: (context, state) => const RegisterUsedSpace(),
    ),
    GoRoute(
      name: 'item-rental',
      path: '/item-rental',
      builder: (context, state) => const ItemRentalScreen(),
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: 'sign-up',
      path: '/sign-up',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      name: 'auth-code-login',
      path: '/auth-code-login',
      builder: (context, state) => const AuthCodeLoginScreen(),
    ),
    GoRoute(
      name: 'completion',
      path: '/completion',
      builder: (context, state) => const CompletionScreen(),
    ),
    GoRoute(
      name: 'failure',
      path: '/failure',
      builder: (context, state) => const FailureScreen(),
    ),
  ],
);
