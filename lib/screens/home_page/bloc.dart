import 'package:auto_route/auto_route.dart';
import 'package:bfs_app/routers/routes.dart';
import 'package:bfs_app/utils/bloc_base.dart';
import 'package:flutter/material.dart';

class HomeBloc extends BlocBaseWithState<ScreenState> {
  @override
  ScreenState get currentState => super.currentState!;

  final TextEditingController controller = TextEditingController();

  HomeBloc() {
    setState(ScreenState());
  }


  void goToProcess(BuildContext context) {
    context.router.push(ProcessRoute(url: controller.text));
  }

  void validateUrl() {
    const urlPattern =
        r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$';
    final regex = RegExp(urlPattern);
    if (controller.text.isNotEmpty && regex.hasMatch(controller.text)) {
      setState(currentState.copyWith(isValidate: true));
    } else {
      setState(currentState.copyWith(isValidate: false));
    }
  }
}

class ScreenState {
  final bool isValidate;

  ScreenState({this.isValidate = false});

  ScreenState copyWith({bool? isValidate}) {
    return ScreenState(isValidate: isValidate ?? this.isValidate);
  }
}
