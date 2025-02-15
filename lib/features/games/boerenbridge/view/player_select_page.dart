import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matties_app/core/model/model.dart';
import 'package:matties_app/features/games/boerenbridge/boerenbridge.dart';
import 'package:matties_app/l10n/l10n.dart';

class PlayerSelectPage extends StatelessWidget {
  const PlayerSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n.boerenbridge.playersSelect;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.title),
      ),
      bottomSheet: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            StartGameButton(),
            SizedBox(height: 8),
            ManagePlayersButton(),
          ],
        ),
      ),
      body: BlocBuilder<BoerenbridgeBloc, BoerenbridgeState>(
        builder: (context, state) {
          if (state.players.isEmpty) {
            return Center(
              child: Text(l10n.empty),
            );
          }
          return ReorderableListView(
            children: state.players
                .map(
                  (player) => ListTile(
                    key: ValueKey<Matties>(player),
                    title: Text(player.name),
                  ),
                )
                .toList(),
            onReorder: (oldIndex, newIndex) =>
                context.read<BoerenbridgeBloc>().add(
                      ReorderPlayerEvent(
                        oldIndex: oldIndex,
                        newIndex: newIndex,
                      ),
                    ),
          );
        },
      ),
    );
  }
}
