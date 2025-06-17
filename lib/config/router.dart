import 'package:danuri_flutter/view/image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/image',
  routes: [
    // GoRoute(
    //   name: '',
    //   path: '/',
    //   builder: (context, state) => const ,
    // ),
    GoRoute(
      name: 'image',
      path: '/image',
      builder: (context, state) => const ImageScreen(),
    ),
  ],
);
