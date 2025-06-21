import 'package:danuri_flutter/view/failure/screen/failure_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/failure',
  routes: [
    GoRoute(
      name: 'failure',
      path: '/failure',
      builder: (context, state) => const FailureScreen(),
    ),
  ],
);
