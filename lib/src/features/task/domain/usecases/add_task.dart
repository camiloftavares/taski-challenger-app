import 'package:taski_challenger_app/src/features/task/domain/types/signatures.dart';

import '../entities/todo_task.dart';
import '../repository/task_repository.dart';

class AddTask {
  final TaskRepository repository;

  AddTask({
    required this.repository,
  });

  Future<AddTaskResult> call(TodoTask task) async {
    return repository.addTask(task);
  }
}