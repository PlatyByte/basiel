// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => StatefulShellRouteData.$route(
      factory: $HomeRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/',
              factory: $TripsRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'trip/:tripId',
                  factory: $TripDetailRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/boerenbridge',
              factory: $PlayerSelectRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'playing-game',
                  factory: $PlayingGameRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();
}

extension $TripsRouteExtension on TripsRoute {
  static TripsRoute _fromState(GoRouterState state) => TripsRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TripDetailRouteExtension on TripDetailRoute {
  static TripDetailRoute _fromState(GoRouterState state) => TripDetailRoute(
        state.pathParameters['tripId']!,
        state.extra as TravelsBloc,
      );

  String get location => GoRouteData.$location(
        '/trip/${Uri.encodeComponent(tripId)}',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $PlayerSelectRouteExtension on PlayerSelectRoute {
  static PlayerSelectRoute _fromState(GoRouterState state) =>
      PlayerSelectRoute();

  String get location => GoRouteData.$location(
        '/boerenbridge',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PlayingGameRouteExtension on PlayingGameRoute {
  static PlayingGameRoute _fromState(GoRouterState state) => PlayingGameRoute();

  String get location => GoRouteData.$location(
        '/boerenbridge/playing-game',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
