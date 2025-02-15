import 'package:flutter/material.dart';
import 'package:matties_app/core/extensions/build_context_extension.dart';
import 'package:matties_app/l10n/l10n.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n.trips;
    return Scaffold(
      appBar: AppBar(
        leading: context.isBigScreen
            ? null
            : IconButton(
                onPressed: () => Scaffold.maybeOf(context)?.openDrawer(),
                icon: const Icon(Icons.menu),
              ),
        title: Text(l10n.title),
      ),
      body: const Placeholder(),
    );
  }
}
