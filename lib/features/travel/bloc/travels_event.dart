part of 'travels_bloc.dart';

sealed class TravelsEvent extends Equatable {}

final class InitializeTravelsEvent extends TravelsEvent {
  @override
  List<Object?> get props => [];
}
