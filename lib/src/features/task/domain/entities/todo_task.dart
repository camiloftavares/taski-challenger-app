import 'package:equatable/equatable.dart';

class TodoTask extends Equatable {
  final String id;
  final String title;
  final String note;

  const TodoTask({
    required this.id,
    required this.title,
    required this.note
  });

  @override
  List<Object?> get props => [
    id,
    title,
    note
  ];
}
