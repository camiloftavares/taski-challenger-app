import 'package:taski_challenger_app/src/features/task/domain/entities/todo_task.dart';
import 'package:taski_challenger_app/src/features/task/domain/repository/task_repository.dart';
import 'package:taski_challenger_app/src/features/task/domain/types/signatures.dart';

class TaskRepositoryImpl implements TaskRepository {
  @override
  Future<AddTaskResult> addTask(TodoTask task) {
    throw UnimplementedError();
  }

  @override
  Future<GetTasksResult> getTasksBy({String? query}) {
    throw UnimplementedError();
  }

  @override
  Future<RemoveTaskResult> removeTask(int taskId) {
    throw UnimplementedError();
  }
}