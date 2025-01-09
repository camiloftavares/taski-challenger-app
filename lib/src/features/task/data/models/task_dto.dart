import 'package:taski_challenger_app/src/features/task/domain/entities/todo_task.dart';

class TaskDto extends TodoTask {
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

  factory TaskDto.fromEntity(TodoTask task) {
    return TaskDto(
      id: task.id,
      title: task.title, 
      note: task.note
    );
  }
}