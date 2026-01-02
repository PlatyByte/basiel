import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:matties_app/app/app.dart';
import 'package:matties_app/features/games/games.dart';
import 'package:matties_app/features/travel/travel.dart';

part 'app_routes.g.dart';

@TypedStatefulShellRoute<HomeRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<StatefulShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<TripsRoute>(
          path: '/',
          routes: <TypedGoRoute<GoRouteData>>[
            TypedGoRoute<TripDetailRoute>(
              path: 'trip/:tripId',
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<StatefulShellBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<PlayerSelectRoute>(
          path: '/boerenbridge',
          routes: <TypedGoRoute<GoRouteData>>[
            TypedGoRoute<PlayingGameRoute>(
              path: 'playing-game',
            ),
          ],
        ),
      ],
    ),
  ],
)
class HomeRoute extends StatefulShellRouteData {
  const HomeRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) =>
      MattiesNavigation(shell: navigationShell);
}

class PlayerSelectRoute extends GoRouteData with $PlayerSelectRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PlayerSelectPage();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final gameState = context.read<BoerenbridgeBloc>().state;

    if (gameState is PlayingState) {
      return PlayingGameRoute().location;
    }

    return null;
  }
}

class PlayingGameRoute extends GoRouteData with $PlayingGameRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const PlayingGamePage();

  @override
  String? redirect(BuildContext context, GoRouterState state) {
    final gameState = context.read<BoerenbridgeBloc>().state;

    if (gameState is! PlayingState) {
      return PlayerSelectRoute().location;
    }

    return null;
  }
}
