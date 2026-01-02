import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matties_app/app/router/router.dart';
import 'package:matties_app/core/extensions/build_context_extension.dart';
import 'package:matties_app/features/travel/travel.dart';
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
      body: BlocBuilder<TravelsBloc, TravelsState>(
        builder: (context, state) {
          return ListView.separated(
            itemCount: state.trips.length,
            separatorBuilder: (context, _) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final trip = state.trips[index];
              return ListTile(
                title: Text(trip.title),
                onTap: () => TripDetailRoute(
                  trip.id,
                  context.read<TravelsBloc>(),
                ).push<void>(context),
              );
            },
          );
        },
      ),
    );
  }
}
