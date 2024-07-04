import 'package:auto_route/auto_route.dart';
import 'package:bfs_app/utils/custom_stream_builder.dart';
import 'package:bfs_app/widgets/custom_scaffold.dart';

import 'package:flutter/material.dart';

import 'bloc.dart';



@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashBloc bloc = SplashBloc();

  @override
void initState() {
  bloc.init(context);
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return CustomStreamBuilder(
        bloc: bloc, builder: (BuildContext context, ScreenState state) {
      return CustomScaffold(
        showAppBar: false,
        body: Padding(padding: EdgeInsets.all(20),
        child: Center(),)
      );
    });
  }
}
