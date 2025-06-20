import 'package:danuri_flutter/view/register_used_space/screen/register_used_space.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/register-used-space',
  routes: [
    GoRoute(
      name: 'register-used-space',
      path: '/register-used-space',
      builder: (context, state) => const RegisterUsedSpace(),
    ),
  ],
);
