import 'package:auto_route/auto_route.dart';
import 'package:bfs_app/generated/l10n.dart';
import 'package:bfs_app/style.dart';
import 'package:bfs_app/utils/custom_stream_builder.dart';
import 'package:bfs_app/utils/spaces.dart';
import 'package:bfs_app/widgets/app_bar.dart';
import 'package:bfs_app/widgets/custom_buttom.dart';
import 'package:bfs_app/widgets/custom_scaffold.dart';
import 'package:bfs_app/widgets/custom_textfield.dart';

import 'package:flutter/material.dart';

import 'bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc bloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: CustomStreamBuilder(
          bloc: bloc,
          builder: (BuildContext context, ScreenState state) {
            return CustomScaffold(
                showBackButton: false,
                page: s.home,
                body: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Spacer(),
                      Text(s.set_api_base_url, style: BS.light14),
                      Space.h16,
                      CustomTextField(
                        controller: bloc.controller,
                        onChanged: (value) => bloc.validateUrl(),
                      ),
                      Space.h32,
                      CustomButtonText(
                        blocButton: state.isValidate,
                        onTap: () => bloc.goToProcess(context),
                        text: s.start_counting,
                      ),
                      const Spacer(),
                    ],
                  ),
                ));
          }),
    );
  }
}
