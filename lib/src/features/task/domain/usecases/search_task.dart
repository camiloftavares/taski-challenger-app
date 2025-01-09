import 'package:taski_challenger_app/src/features/task/domain/types/signatures.dart';

import '../repository/task_repository.dart';

class SearchTask {
  final TaskRepository repository;

  SearchTask({
    required this.repository,
  });

  Future<GetTasksResult> call(String query) async {
    return repository.getTasksBy(query: query);
  }
}