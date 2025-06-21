import 'package:danuri_flutter/view/completion/screen/completion_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/completion',
  routes: [
    GoRoute(
      name: 'completion',
      path: '/completion',
      builder: (context, state) => const CompletionScreen(),
    ),
  ],
);
