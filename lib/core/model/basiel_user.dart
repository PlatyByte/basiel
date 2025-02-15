part of 'model.dart';

class BasielUser extends Equatable {
  const BasielUser({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
