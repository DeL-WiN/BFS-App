import 'package:auto_route/auto_route.dart';
import 'package:bfs_app/api/path_finding/dto.dart';
import 'package:bfs_app/style.dart';
import 'package:bfs_app/utils/custom_stream_builder.dart';
import 'package:bfs_app/utils/spaces.dart';
import 'package:bfs_app/widgets/custom_buttom.dart';
import 'package:bfs_app/widgets/custom_scaffold.dart';

import 'package:flutter/material.dart';

import 'bloc.dart';

@RoutePage()
class ResultsPage extends StatefulWidget {
  final List<ResultDto> results;
  const ResultsPage({super.key, required this.results});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  final ResultsBloc bloc = ResultsBloc();



  @override
  Widget build(BuildContext context) {
    return CustomStreamBuilder(
        bloc: bloc,
        builder: (BuildContext context, ScreenState state) {
          return CustomScaffold(
              page: 'Results',
              body: ListView.builder(
                padding: const EdgeInsets.all(16),
                  itemCount: widget.results.length,
                  itemBuilder: (context, index) {
                return Column(
                  children: [
                    CustomButtonText(
                      onTap: () => bloc.goToPreview(context, widget.results[index]),
                      borderRadius: BRadius.r4,
                      color: BC.transparent,
                      text: widget.results[index].result?.path,
                      textStyle: BS.sb18.apply(color: BC.black),

                    ),
                    Space.h16,
                  ],
                );
              }));
        });
  }
}
