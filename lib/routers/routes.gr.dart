// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    PreviewRoute.name: (routeData) {
      final args = routeData.argsAs<PreviewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PreviewPage(
          key: args.key,
          result: args.result,
        ),
      );
    },
    ProcessRoute.name: (routeData) {
      final args = routeData.argsAs<ProcessRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProcessPage(
          key: args.key,
          url: args.url,
        ),
      );
    },
    ResultsRoute.name: (routeData) {
      final args = routeData.argsAs<ResultsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ResultsPage(
          key: args.key,
          results: args.results,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PreviewPage]
class PreviewRoute extends PageRouteInfo<PreviewRouteArgs> {
  PreviewRoute({
    Key? key,
    required ResultDto result,
    List<PageRouteInfo>? children,
  }) : super(
          PreviewRoute.name,
          args: PreviewRouteArgs(
            key: key,
            result: result,
          ),
          initialChildren: children,
        );

  static const String name = 'PreviewRoute';

  static const PageInfo<PreviewRouteArgs> page =
      PageInfo<PreviewRouteArgs>(name);
}

class PreviewRouteArgs {
  const PreviewRouteArgs({
    this.key,
    required this.result,
  });

  final Key? key;

  final ResultDto result;

  @override
  String toString() {
    return 'PreviewRouteArgs{key: $key, result: $result}';
  }
}

/// generated route for
/// [ProcessPage]
class ProcessRoute extends PageRouteInfo<ProcessRouteArgs> {
  ProcessRoute({
    Key? key,
    required String url,
    List<PageRouteInfo>? children,
  }) : super(
          ProcessRoute.name,
          args: ProcessRouteArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'ProcessRoute';

  static const PageInfo<ProcessRouteArgs> page =
      PageInfo<ProcessRouteArgs>(name);
}

class ProcessRouteArgs {
  const ProcessRouteArgs({
    this.key,
    required this.url,
  });

  final Key? key;

  final String url;

  @override
  String toString() {
    return 'ProcessRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [ResultsPage]
class ResultsRoute extends PageRouteInfo<ResultsRouteArgs> {
  ResultsRoute({
    Key? key,
    required List<ResultDto> results,
    List<PageRouteInfo>? children,
  }) : super(
          ResultsRoute.name,
          args: ResultsRouteArgs(
            key: key,
            results: results,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultsRoute';

  static const PageInfo<ResultsRouteArgs> page =
      PageInfo<ResultsRouteArgs>(name);
}

class ResultsRouteArgs {
  const ResultsRouteArgs({
    this.key,
    required this.results,
  });

  final Key? key;

  final List<ResultDto> results;

  @override
  String toString() {
    return 'ResultsRouteArgs{key: $key, results: $results}';
  }
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
