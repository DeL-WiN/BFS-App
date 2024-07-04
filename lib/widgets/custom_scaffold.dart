import 'package:bfs_app/generated/assets.gen.dart';
import 'package:bfs_app/generated/l10n.dart';
import 'package:bfs_app/style.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {this.appBar,
      required this.body,
      this.bottomNavigationBar,
      super.key,
      this.page,
      this.showAppBar = true,
      this.showBackButton = true});

  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;
  final String? page;
  final bool showAppBar;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      backgroundColor: BC.white,
      appBar: showAppBar
          ? AppBar(
        automaticallyImplyLeading: false,
              backgroundColor: BC.blue,
              leading: showBackButton
                  ? BackButton(
                      color: BC.white,
                    )
                  : null,
              centerTitle: false,
              title: Text('$page ${s.page}',
                  style: BS.sb20.apply(color: BC.white)),
            )
          : null,
      bottomNavigationBar: bottomNavigationBar,
      body: SafeArea(child: body),
    );
  }
}
