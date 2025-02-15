import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:matties_app/core/model/model.dart';
import 'package:matties_app/core/model/travel/travel.dart';

part 'travels_state.dart';
part 'travels_event.dart';

class TravelsBloc extends Bloc<TravelsEvent, TravelsState> {
  TravelsBloc() : super(const InitialTravelsState([])) {
    on<InitializeTravelsEvent>(_onInit);
  }

  FutureOr<void> _onInit(
    InitializeTravelsEvent event,
    Emitter<TravelsState> emit,
  ) {
    emit(const LoadingTravelsState([]));

    final trips = [
      Trip(
        id: '1',
        title: 'Slovenië',
        startDate: DateTime(2025, 8),
        endDate: DateTime(2025, 8, 17),
        participants: Matties.users(),
      ),
      Trip(
        id: '2',
        title: 'Skiën',
        startDate: DateTime(2025, 3),
        endDate: DateTime(2025, 3, 8),
        participants: Matties.users(),
      ),
      Trip(
        id: '3',
        title: 'Kampioenen weekend',
        startDate: DateTime(2025, 4, 11),
        endDate: DateTime(2025, 4, 13),
        participants: Matties.users(),
      ),
      Trip(
        id: '4',
        title: 'Georgië',
        startDate: DateTime(2024, 7, 25),
        endDate: DateTime(2025, 8, 11),
        participants: Matties.users(),
      ),
    ];

    emit(LoadedTravelsState(trips));
  }
}
