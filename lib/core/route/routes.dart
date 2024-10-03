import 'package:domi_track/core/route/route_utils.dart';
import 'package:domi_track/features/details/view/screens/details_screen.dart';
import 'package:domi_track/features/home/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final kNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  GoRouter get router => _goRouter;

  static final GoRouter _goRouter = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: RouteEnum.home.toPath,
      routes: [
        GoRoute(
          name: RouteEnum.home.toName,
          path: RouteEnum.home.toPath,
          builder: ((context, state) => const HomeScreen()),
        ),
        GoRoute(
          name: RouteEnum.details.toName,
          path: RouteEnum.details.toPath,
          builder: ((context, state) => const DetailsScreen()),
        ),
      ]);
}
