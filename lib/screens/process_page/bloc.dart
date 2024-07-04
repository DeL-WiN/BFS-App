import 'dart:collection';

import 'package:auto_route/auto_route.dart';
import 'package:bfs_app/api/path_finding/dto.dart';
import 'package:bfs_app/api/path_finding/request.dart';
import 'package:bfs_app/routers/routes.dart';
import 'package:bfs_app/utils/bloc_base.dart';
import 'package:flutter/material.dart';

class ProcessBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  final PathApi pathApi = PathApi();

  ProcessBloc() {
    setState(ScreenState());
  }

  void init(String url) async {
    try {
      double progress = 0;
      final points = await pathApi.getPoints(url);
      final total = points.data?.length ?? 0;
      for (int i = 0; i < total; i++) {
        var datum = points.data?[i];
        if (datum != null) {
          progress = (i + 1) / total;
          final result = findShortestPath(datum);
          if (result.result?.path?.isNotEmpty ?? false) {
            setState(currentState.copyWith(
                result: [...currentState.result, result],
                loading: progress,
                blocButton: false));
          }
        }
      }
    } on Exception catch (e) {
      setState(currentState.copyWith(loading: 0, isError: true));
    }
  }

  void goToResults(BuildContext context) async {
    try {
      setState(currentState.copyWith(blocButton: true));
      await pathApi.postPoints(currentState.result);
      if (context.mounted) {
        context.router.replace(ResultsRoute(results: currentState.result));
        setState(currentState.copyWith(blocButton: false));
      }
    } catch (e) {
      setState(currentState.copyWith(loading: 0, isErrorPost: true));
    }
  }

  ResultDto findShortestPath(Datum datum) {
    final directions = [
      [0, 1], // right
      [1, 0], // down
      [0, -1], // left
      [-1, 0], // up
      [1, 1], // down-right
      [-1, -1], // up-left
      [1, -1], // down-left
      [-1, 1] // up-right
    ];

    final int rows = datum.field?.length ?? 0;
    final int cols = datum.field?[0].length ?? 0;
    final startX = datum.start?.x ?? 0;
    final startY = datum.start?.y;
    final endX = datum.end?.x;
    final endY = datum.end?.y;

    final Queue<List<StepDto>> queue = Queue<List<StepDto>>();
    final Set<String> visited = {};

    queue.add([StepDto(x: startX, y: startY)]);
    visited.add('$startX,$startY');

    while (queue.isNotEmpty) {
      final path = queue.removeFirst();
      final current = path.last;
      final x = current.x;
      final y = current.y;

      if (x == endX && y == endY) {
        final pathString =
            path.map((step) => '(${step.x}, ${step.y})').join(' -> ');
        return ResultDto(
            result: Result(steps: path, path: pathString),
            id: datum.id,
            data: datum);
      }

      for (var direction in directions) {
        int newX = x ?? 0;
        int newY = y ?? 0;

        newX += direction[0];
        newY += direction[1];

        if (newX >= 0 &&
            newX < rows &&
            newY >= 0 &&
            newY < cols &&
            datum.field?[newX][newY] != 'X' &&
            !visited.contains('$newX,$newY')) {
          visited.add('$newX,$newY');
          final newPath = List<StepDto>.from(path)
            ..add(StepDto(x: newX, y: newY));
          queue.add(newPath);
        }
      }
    }

    return ResultDto(
        id: datum.id, result: Result(steps: [], path: ''), data: datum);
  }
}

class ScreenState {
  final double loading;
  final bool blocButton;
  final bool isError;
  final bool isErrorPost;
  final List<ResultDto> result;

  ScreenState(
      {this.loading = 0,
      this.result = const [],
      this.isError = false,
      this.blocButton = true,
      this.isErrorPost = false});

  ScreenState copyWith(
      {double? loading,
      List<ResultDto>? result,
      bool? isError,
      bool? blocButton,
      bool? isErrorPost}) {
    return ScreenState(
        loading: loading ?? this.loading,
        result: result ?? this.result,
        isError: isError ?? this.isError,
        blocButton: blocButton ?? this.blocButton,
        isErrorPost: isErrorPost ?? this.isErrorPost);
  }
}
