import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:matties_app/app/router/router.dart';
import 'package:matties_app/features/travel/travel.dart';

class AppRouter {
  static GoRouter router({Listenable? refreshListenable}) => GoRouter(
        debugLogDiagnostics: kDebugMode,
        initialLocation: TripsRoute().location,
        refreshListenable: refreshListenable,
        routes: $appRoutes,
      );
}
