import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:matties_app/app/router/router.dart';
import 'package:matties_app/core/model/travel/travel.dart';
import 'package:matties_app/features/travel/travel.dart';

class TripsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider<TravelsBloc>(
      create: (_) => TravelsBloc()..add(InitializeTravelsEvent()),
      child: const TravelPage(),
    );
  }
}

class TripDetailRoute extends GoRouteData {
  TripDetailRoute(
    this.tripId,
    this.$extra,
  );

  final String tripId;
  final TravelsBloc $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider<TravelsBloc>.value(
      value: $extra,
      child: BlocSelector<TravelsBloc, TravelsState, Trip?>(
        bloc: $extra,
        selector: (state) =>
            state.trips.where((t) => t.id == tripId).firstOrNull,
        builder: (context, trip) {
          if (trip == null) {
            TripsRoute().go(context);
          }
          return TripDetailPage(trip: trip!);
        },
      ),
    );
  }
}
