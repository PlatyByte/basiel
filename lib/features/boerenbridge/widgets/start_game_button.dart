import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matties_app/features/boerenbridge/boerenbridge.dart';
import 'package:matties_app/l10n/l10n.dart';

class StartGameButton extends StatelessWidget {
  const StartGameButton({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n.boerenbridge.playersSelect;
    return BlocSelector<BoerenbridgeBloc, BoerenbridgeState, bool>(
      selector: (state) => state.players.length >= 3,
      builder: (context, enoughPlayers) {
        return FilledButton(
          onPressed: !enoughPlayers
              ? null
              : () => context.read<BoerenbridgeBloc>().add(StartPlayingEvent()),
          child: Text(l10n.cta.start),
        );
      },
    );
  }
}
