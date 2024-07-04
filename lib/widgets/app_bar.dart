import 'package:bfs_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class CAppBar extends StatelessWidget {
  final String page;
  const CAppBar({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return AppBar(
      leading: const BackButton(),
      centerTitle: false,
      title: Text('$page ${s.page}'),
    );
  }
}
