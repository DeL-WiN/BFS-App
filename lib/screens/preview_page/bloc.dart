import 'package:auto_route/auto_route.dart';
import 'package:bfs_app/api/path_finding/dto.dart';
import 'package:bfs_app/utils/bloc_base.dart';
import 'package:flutter/material.dart';

class PreviewBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  PreviewBloc() {
    setState(ScreenState());
  }

  ColorPoints getColorPoints(ResultDto? result, int index) {
    final datum = result?.data;
    final x = index ~/ (datum?.field?[0].length ?? 0);
    final y = index % (datum?.field?.length ?? 0);
    final isPath =
        result?.result?.steps?.any((step) => step.x == x && step.y == y);
    final isStart = datum?.start?.x == x && datum?.start?.y == y;
    final isEnd = datum?.end?.x == x && datum?.end?.y == y;
    final isWall = datum?.field?[x][y] == 'X';

    return ColorPoints(
        isPath: isPath ?? false,
        isStart: isStart,
        isEnd: isEnd,
        isWall: isWall,
        step: StepDto(x: x, y: y));
  }
}

class ScreenState {
  final bool loading;

  ScreenState({this.loading = false});

  ScreenState copyWith({bool? loading}) {
    return ScreenState(loading: loading ?? this.loading);
  }
}
