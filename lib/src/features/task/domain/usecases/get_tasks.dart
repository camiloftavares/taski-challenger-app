import 'package:taski_challenger_app/src/features/task/domain/types/signatures.dart';

import '../repository/task_repository.dart';

class GetTasks {
  final TaskRepository repository;

  GetTasks({
    required this.repository,
  });

  Future<GetTasksResult> call() async {
    return repository.getTasksBy();
  }
}