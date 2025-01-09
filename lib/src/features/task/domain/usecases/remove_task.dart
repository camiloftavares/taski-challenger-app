import 'package:taski_challenger_app/src/features/task/domain/types/signatures.dart';

import '../repository/task_repository.dart';

class RemoveTask {
  final TaskRepository repository;

  RemoveTask({
    required this.repository,
  });

  Future<RemoveTaskResult> call(int taskId) async {
    return repository.removeTask(taskId);
  }
}