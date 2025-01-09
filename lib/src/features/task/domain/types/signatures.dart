import 'package:taski_challenger_app/src/core/signatures/result.dart';
import 'package:taski_challenger_app/src/features/task/domain/entities/todo.dart';

typedef AddTaskResult = Result<void>;
typedef GetTasksResult = Result<List<Task>>;
typedef RemoveTaskResult = Result<void>;