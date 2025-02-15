part of 'travels_bloc.dart';

sealed class TravelsState extends Equatable {
  const TravelsState(this._trips);

  final List<Trip> _trips;

  List<Trip> get trips => List.of(_trips);

  @override
  List<Object?> get props => [_trips];
}

final class InitialTravelsState extends TravelsState {
  const InitialTravelsState(super.trips);
}

final class LoadingTravelsState extends TravelsState {
  const LoadingTravelsState(super.trips);
}

final class LoadedTravelsState extends TravelsState {
  const LoadedTravelsState(super.trips);
}
