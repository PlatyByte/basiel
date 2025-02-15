import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matties_app/core/extensions/build_context_extension.dart';
import 'package:matties_app/l10n/l10n.dart';

class MattiesNavigation extends StatefulWidget {
  const MattiesNavigation({
    required this.shell,
    super.key,
  });

  final StatefulNavigationShell shell;

  @override
  State<MattiesNavigation> createState() => _MattiesNavigationState();
}

class _MattiesNavigationState extends State<MattiesNavigation> {
  late GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  void initState() {
    super.initState();
    _scaffoldKey = GlobalKey<ScaffoldState>();
  }

  @override
  Widget build(BuildContext context) {
    final drawer = NavigationDrawer(
      selectedIndex: widget.shell.currentIndex,
      onDestinationSelected: _onTap,
      children: [
        for (final MapEntry(key: icon, value: label)
            in _branches(context).entries)
          NavigationDrawerDestination(
            icon: Icon(icon),
            label: Text(label),
          ),
      ],
    );

    if (context.isBigScreen) {
      return Scaffold(
        key: _scaffoldKey,
        body: Row(
          children: [
            drawer,
            Expanded(
              child: widget.shell,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      key: _scaffoldKey,
      drawer: drawer,
      body: widget.shell,
    );
  }

  void _onTap(int nextBranchIndex) {
    widget.shell.goBranch(nextBranchIndex);
    if (!context.isBigScreen) {
      _scaffoldKey.currentState?.closeDrawer();
    }
  }

  Map<IconData, String> _branches(BuildContext context) {
    final l10n = context.l10n.app.navigation;
    return {
      Icons.travel_explore: l10n.trips,
      Icons.games: l10n.games,
    };
  }
}
