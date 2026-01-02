import 'package:flutter/material.dart';
import 'package:matties_app/core/extensions/build_context_extension.dart';
import 'package:matties_app/core/model/travel/travel.dart';

class TripDetailPage extends StatelessWidget {
  const TripDetailPage({
    required this.trip,
    super.key,
  });

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.isBigScreen ? null : AppBar(),
      body: const Placeholder(),
    );
  }
}
