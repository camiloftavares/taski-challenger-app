import 'package:taski_challenger_app/src/features/task/domain/types/signatures.dart';

import '../entities/task.dart';
import '../repository/task_repository.dart';

class AddTask {
  final TaskRepository repository;

  AddTask({
    required this.repository,
  });

  Future<AddTaskResult> call(Task task) async {
    return repository.addTask(task);
  }
}