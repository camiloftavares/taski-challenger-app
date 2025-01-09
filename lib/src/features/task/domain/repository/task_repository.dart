import 'package:taski_challenger_app/src/features/task/domain/types/signatures.dart';

import '../entities/task.dart';

abstract class TaskRepository {
  Future<AddTaskResult> addTask(Task task);
  
  Future<GetTasksResult> getTasksBy({String? query});
  
  Future<RemoveTaskResult> removeTask(int taskId);

}