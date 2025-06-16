import 'package:danuri_flutter/view/organ_auth/screen/organ_auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/organ-auth',
  routes: [
    GoRoute(
      name: 'organ-auth',
      path: '/organ-auth',
      builder: (context, state) => const OrganAuthScreen(),
    ),
  ],
);
