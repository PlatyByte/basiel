import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matties_app/l10n/l10n.dart';

class MattiesNavigation extends StatelessWidget {
  const MattiesNavigation({
    required this.shell,
    super.key,
  });

  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.maybeSizeOf(context);

    if (size != null && size.width > 840) {
      return Scaffold(
        body: Row(
          children: [
            NavigationRail(
              selectedIndex: shell.currentIndex,
              labelType: NavigationRailLabelType.all,
              onDestinationSelected: _onTap,
              destinations: [
                for (final MapEntry(key: icon, value: label)
                    in _branches(context).entries)
                  NavigationRailDestination(
                    icon: Icon(icon),
                    label: Text(label),
                  ),
              ],
            ),
            Expanded(
              child: shell,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: shell,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTap,
        items: [
          for (final MapEntry(key: icon, value: label)
              in _branches(context).entries)
            BottomNavigationBarItem(
              icon: Icon(icon),
              label: label,
            ),
        ],
      ),
    );
  }

  void _onTap(int nextBranchIndex) {
    return shell.goBranch(nextBranchIndex);
  }

  Map<IconData, String> _branches(BuildContext context) {
    final l10n = context.l10n.app.navigation;
    return {
      Icons.travel_explore: l10n.trips,
      Icons.games: l10n.games,
    };
  }
}
