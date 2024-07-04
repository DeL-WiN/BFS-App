import 'package:auto_route/auto_route.dart';
import 'package:bfs_app/api/path_finding/dto.dart';
import 'package:bfs_app/screens/home_page/page.dart';
import 'package:bfs_app/screens/preview_page/page.dart';
import 'package:bfs_app/screens/process_page/page.dart';
import 'package:bfs_app/screens/results_page/page.dart';
import 'package:bfs_app/screens/splash_page/page.dart';
import 'package:flutter/material.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: SplashRoute.page),
    AutoRoute(path: '/home', page: HomeRoute.page),
    AutoRoute(path: '/process', page: ProcessRoute.page),
    AutoRoute(path: '/results', page: ResultsRoute.page),
    AutoRoute(path: '/preview', page: PreviewRoute.page),
  ];
}

// dart run build_runner watch
// dart run build_runner build
