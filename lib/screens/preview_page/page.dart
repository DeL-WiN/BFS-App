import 'package:auto_route/auto_route.dart';
import 'package:bfs_app/api/path_finding/dto.dart';
import 'package:bfs_app/generated/l10n.dart';
import 'package:bfs_app/style.dart';
import 'package:bfs_app/utils/custom_stream_builder.dart';
import 'package:bfs_app/utils/spaces.dart';
import 'package:bfs_app/widgets/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'bloc.dart';

@RoutePage()
class PreviewPage extends StatefulWidget {
  final ResultDto result;

  const PreviewPage({super.key, required this.result});

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  final PreviewBloc bloc = PreviewBloc();

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final datum = widget.result.data;
    return CustomStreamBuilder(
        bloc: bloc,
        builder: (BuildContext context, ScreenState state) {
          return CustomScaffold(
              page: s.preview,
              body: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: datum?.field?.length ?? 0,
                        ),
                        itemCount: (datum?.field?.length ?? 0) *
                            (datum?.field?[0].length ?? 0),
                        itemBuilder: (context, index) {
                          final colors =
                              bloc.getColorPoints(widget.result, index);
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: BC.black, width: 1),
                              color: colors.isStart
                                  ? BC.startPoint
                                  : colors.isEnd
                                      ? BC.endPoint
                                      : colors.isPath == true
                                          ? BC.pathPoint
                                          : colors.isWall
                                              ? BC.black
                                              : BC.white,
                            ),
                            child: Center(
                              child: Text(
                                  '(${colors.step?.x},${colors.step?.y})',
                                  style: BS.light14.apply(
                                      color:
                                          colors.isWall ? BC.white : BC.black)),
                            ),
                          );
                        },
                      ),
                    ),
                    Space.h16,
                    Text(
                      widget.result.result?.path ?? '',
                    ),
                  ],
                ),
              ));
        });
  }
}
