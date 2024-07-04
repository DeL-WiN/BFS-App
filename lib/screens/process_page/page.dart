import 'package:auto_route/auto_route.dart';
import 'package:bfs_app/generated/l10n.dart';
import 'package:bfs_app/style.dart';
import 'package:bfs_app/utils/custom_stream_builder.dart';
import 'package:bfs_app/utils/spaces.dart';
import 'package:bfs_app/widgets/custom_buttom.dart';
import 'package:bfs_app/widgets/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'bloc.dart';

@RoutePage()
class ProcessPage extends StatefulWidget {
  final String url;

  const ProcessPage({super.key, required this.url});

  @override
  State<ProcessPage> createState() => _ProcessPageState();
}

class _ProcessPageState extends State<ProcessPage> {
  final ProcessBloc bloc = ProcessBloc();

  @override
  void initState() {
    bloc.init(widget.url);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return CustomStreamBuilder(
        bloc: bloc,
        builder: (BuildContext context, ScreenState state) {
          return CustomScaffold(
              page: s.process,
              showBackButton: (state.loading == 1 ||
                      state.isError == true ||
                      state.isErrorPost == true)
                  ? true
                  : false,
              body: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                        (state.isErrorPost)
                            ? s.error_server
                            : (state.isError)
                                ? s.error
                                : (state.loading == 1)
                                    ? s.all_calculations_has_finished
                                    : s.the_calculation_is_not_yet_complete,
                        style: state.isError ? BS.sb20 : BS.light14,
                        textAlign: TextAlign.center),
                    Space.h16,
                    if (!state.isError && !state.isErrorPost)
                      Text('${(state.loading * 100).toStringAsFixed(0)}%',
                          style: BS.sb20),
                    Space.h32,
                    (state.isError || state.isErrorPost)
                        ? Icon(Icons.error, color: BC.red, size: 100)
                        : SizedBox(
                            width: 100,
                            height: 100,
                            child: CircularProgressIndicator(
                              value: state.loading,
                              strokeWidth: 4,
                              color: BC.blue,
                            ),
                          ),
                    const Spacer(),
                    CustomButtonText(
                      blocButton: !state.blocButton,
                      onTap: () => bloc.goToResults(context),
                      text: s.send_results_to_server,
                    )
                  ],
                ),
              ));
        });
  }
}
