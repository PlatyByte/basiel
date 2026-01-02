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
              factory: $TripsRoute._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'trip/:tripId',
                  factory: $TripDetailRoute._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/boerenbridge',
              factory: $PlayerSelectRoute._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'playing-game',
                  factory: $PlayingGameRoute._fromState,
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

mixin $TripsRoute on GoRouteData {
  static TripsRoute _fromState(GoRouterState state) => TripsRoute();

  @override
  String get location => GoRouteData.$location(
        '/',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $TripDetailRoute on GoRouteData {
  static TripDetailRoute _fromState(GoRouterState state) => TripDetailRoute(
        state.pathParameters['tripId']!,
        state.extra as TravelsBloc,
      );

  TripDetailRoute get _self => this as TripDetailRoute;

  @override
  String get location => GoRouteData.$location(
        '/trip/${Uri.encodeComponent(_self.tripId)}',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin $PlayerSelectRoute on GoRouteData {
  static PlayerSelectRoute _fromState(GoRouterState state) =>
      PlayerSelectRoute();

  @override
  String get location => GoRouteData.$location(
        '/boerenbridge',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $PlayingGameRoute on GoRouteData {
  static PlayingGameRoute _fromState(GoRouterState state) => PlayingGameRoute();

  @override
  String get location => GoRouteData.$location(
        '/boerenbridge/playing-game',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
