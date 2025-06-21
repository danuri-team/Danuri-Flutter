import 'package:danuri_flutter/view/item_rental/screen/item_rental_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/item-rental',
  routes: [
    GoRoute(
      name: 'item-rental',
      path: '/item-rental',
      builder: (context, state) => const ItemRentalScreen(),
    ),
  ],
);
