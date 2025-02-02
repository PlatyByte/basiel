import 'package:flutter/material.dart';
import 'package:matties_app/l10n/l10n.dart';

class TripsPage extends StatelessWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n.trips;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.title),
      ),
      body: const Placeholder(),
    );
  }
}
