import 'package:taski_challenger_app/src/core/signatures/result.dart';
import 'package:taski_challenger_app/src/features/task/domain/entities/todo_task.dart';

typedef AddTaskResult = Result<void>;
typedef GetTasksResult = Result<List<TodoTask>>;
typedef RemoveTaskResult = Result<void>;