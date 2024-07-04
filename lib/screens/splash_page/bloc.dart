import 'package:auto_route/auto_route.dart';
import 'package:bfs_app/routers/routes.dart';
import 'package:bfs_app/utils/bloc_base.dart';
import 'package:flutter/material.dart';


class SplashBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  SplashBloc() {
    setState(ScreenState());
  }

  void init(BuildContext context) async {
    context.router.replaceAll([const HomeRoute()]);
  }
}

class ScreenState {
  final bool loading;

  ScreenState({this.loading = false});

  ScreenState copyWith({bool? loading}) {
    return ScreenState(loading: loading ?? this.loading);
  }
}
