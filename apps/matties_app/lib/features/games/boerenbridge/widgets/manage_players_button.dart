import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matties_app/core/model/model.dart';
import 'package:matties_app/features/games/boerenbridge/boerenbridge.dart';
import 'package:matties_app/l10n/l10n.dart';

class ManagePlayersButton extends StatelessWidget {
  const ManagePlayersButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n.boerenbridge.playersSelect;
    return FilledButton(
      child: Text(l10n.cta.select),
      onPressed: () => _showDialog(context),
    );
  }

  void _showDialog(BuildContext parentContext) {
    final l10n = parentContext.l10n.boerenbridge.playersSelect;
    showDialog<AlertDialog>(
      context: parentContext,
      builder: (context) {
        return BlocProvider.value(
          value: parentContext.read<BoerenbridgeBloc>(),
          child: BlocBuilder<BoerenbridgeBloc, BoerenbridgeState>(
            builder: (context, state) {
              return AlertDialog(
                actions: [
                  FilledButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(l10n.popUp.done),
                  ),
                ],
                content: SizedBox(
                  width: double.maxFinite,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: Matties.values.length,
                    itemBuilder: (context, index) => CheckboxListTile(
                      title: Text(Matties.values[index].name),
                      value: state.players.contains(Matties.values[index]),
                      onChanged: (selected) =>
                          context.read<BoerenbridgeBloc>().add(
                                selected ?? false
                                    ? AddPlayerEvent(Matties.values[index])
                                    : RemovePlayerEvent(Matties.values[index]),
                              ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
