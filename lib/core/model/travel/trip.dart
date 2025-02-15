part of 'travel.dart';

class Trip extends Equatable {
  const Trip({
    required this.id,
    required this.title,
    required this.startDate,
    required this.endDate,
    required List<BasielUser> participants,
    this.description,
  }) : _participants = participants;

  final String id;
  final String title;
  final String? description;
  final DateTime startDate;
  final DateTime endDate;
  final List<BasielUser> _participants;

  List<BasielUser> get participants => List.of(_participants);

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        startDate,
        endDate,
        _participants,
      ];
}
