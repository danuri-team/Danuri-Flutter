import 'package:danuri_flutter/config/app_routes.dart';
import 'package:danuri_flutter/presentation/failure/screen/failure_screen.dart';
import 'package:danuri_flutter/presentation/completion/screen/completion_screen.dart';
import 'package:danuri_flutter/presentation/item_rental/screen/item_rental_screen.dart';
import 'package:danuri_flutter/presentation/qr/qr_screen.dart';
import 'package:danuri_flutter/presentation/register_used_space/screen/register_used_space.dart';
import 'package:danuri_flutter/presentation/auth_code_login/screen/auth_code_login_screen.dart';
import 'package:danuri_flutter/presentation/sign_up/screen/sign_up_screen.dart';
import 'package:danuri_flutter/presentation/login/screen/login_screen.dart';
import 'package:danuri_flutter/presentation/organ_auth/screen/organ_auth_screen.dart';
import 'package:danuri_flutter/presentation/home/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router(String initialLocation) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: initialLocation,
    routes: [
      GoRoute(
        name: 'organ-auth',
        path: AppRoutes.organAuth,
        builder: (context, state) => const OrganAuthScreen(),
      ),
      GoRoute(
        name: 'home',
        path: AppRoutes.home,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        name: 'register-used-space',
        path: AppRoutes.registerUsedSpace,
        builder: (context, state) => const RegisterUsedSpace(),
      ),
      GoRoute(
        name: 'item-rental',
        path: AppRoutes.itemRental,
        builder: (context, state) => const ItemRentalScreen(),
      ),
      GoRoute(
        name: 'login',
        path: AppRoutes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: 'sign-up',
        path: AppRoutes.signUp,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        name: 'auth-code-login',
        path: AppRoutes.authCodeLogin,
        builder: (context, state) => const AuthCodeLoginScreen(),
      ),
      GoRoute(
        name: 'completion',
        path: AppRoutes.completion,
        builder: (context, state) => const CompletionScreen(),
      ),
      GoRoute(
        name: 'failure',
        path: AppRoutes.failure,
        builder: (context, state) => const FailureScreen(),
      ),
      GoRoute(
        name: 'qr',
        path: AppRoutes.qr,
        builder: (context, state) => QrScreen(),
      ),
    ],
  );
}
