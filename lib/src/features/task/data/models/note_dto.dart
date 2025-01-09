import 'package:taski_challenger_app/src/features/task/domain/entities/task.dart';

class TaskDto extends Task {
  const TaskDto({
    required super.id,
    required super.title, 
    required super.note
  });

  factory TaskDto.fromMap(Map map) {
    return TaskDto(
      id: map['id'], 
      title: map['title'], 
      note: map['note']
    );
  }

  factory TaskDto.fromEntity(Task note) {
    return TaskDto(
      id: note.id,
      title: note.title, 
      note: note.note
    );
  }
}