import 'package:auto_route/auto_route.dart';
import 'package:bfs_app/api/path_finding/dto.dart';
import 'package:bfs_app/routers/routes.dart';
import 'package:bfs_app/utils/bloc_base.dart';
import 'package:flutter/material.dart';


class ResultsBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  ResultsBloc() {
    setState(ScreenState());
  }


  void goToPreview(BuildContext context, ResultDto result) {
    context.router.push( PreviewRoute(result: result) );
  }
}

class ScreenState {
  final bool loading;

  ScreenState({this.loading = false});

  ScreenState copyWith({bool? loading}) {
    return ScreenState(loading: loading ?? this.loading);
  }
}
