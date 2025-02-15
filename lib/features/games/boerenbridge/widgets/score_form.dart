import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:matties_app/core/model/model.dart';
import 'package:matties_app/features/games/boerenbridge/boerenbridge.dart';
import 'package:matties_app/l10n/l10n.dart';

class ScoreForm extends StatefulWidget {
  const ScoreForm({
    required this.state,
    required this.formKey,
    super.key,
  });

  final PlayingState state;
  final GlobalKey<FormBuilderState> formKey;

  bool get isEstimating => state is EstimateTricksState;

  @override
  State<ScoreForm> createState() => _ScoreFormState();
}

class _ScoreFormState extends State<ScoreForm> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n.boerenbridge.playing;
    final state = widget.state;
    return FormBuilder(
      key: widget.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                l10n.shuffleInformation(
                  shufflerName: state.shuffler.name,
                  amount: state.cardsInHand,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: l10n.scoreCard.map(Text.new).toList(),
              ),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: widget.state.score.length,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final scoreEntry =
                      widget.state.score.entries.elementAt(index);
                  return Row(
                    children: [
                      Expanded(
                        child: Text(scoreEntry.key.name),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 2,
                        child: FormBuilderTextField(
                          name: 'estimate_${scoreEntry.key.name}',
                          enabled: widget.isEstimating,
                          initialValue: (widget.isEstimating)
                              ? null
                              : (widget.state as InsertTricksState)
                                  .estimates[scoreEntry.key]
                                  .toString(),
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          validator: FormBuilderValidators.skipWhen(
                            (_) => !widget.isEstimating,
                            FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                              FormBuilderValidators.maxLength(1),
                            ]),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        flex: 2,
                        child: FormBuilderTextField(
                          name: 'actual_${scoreEntry.key.name}',
                          enabled: !widget.isEstimating,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          validator: FormBuilderValidators.skipWhen(
                            (_) => widget.isEstimating,
                            FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                              FormBuilderValidators.maxLength(1),
                            ]),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(scoreEntry.value.toString()),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: FilledButton(
                onPressed: () {
                  widget.formKey.currentState?.saveAndValidate();
                  final filtered = Map.of(widget.formKey.currentState!.value);
                  if (widget.isEstimating) {
                    filtered.removeWhere(
                      (key, value) => key.startsWith('actual'),
                    );
                  } else {
                    filtered.removeWhere(
                      (key, value) => key.startsWith('estimate'),
                    );
                  }
                  final values = filtered.map<Matties, int>((key, value) {
                    final mattie = key.split('_')[1];
                    return MapEntry(
                      Matties.fromString(mattie),
                      int.parse(value as String),
                    );
                  });
                  if (widget.isEstimating) {
                    context
                        .read<BoerenbridgeBloc>()
                        .add(EstimatedTricksEvent(values));
                  } else {
                    context
                        .read<BoerenbridgeBloc>()
                        .add(AchievedTricksEvent(values));
                  }
                },
                child: Text(l10n.next),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
