import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:taski_challenger_app/src/core/errors/failure.dart';
import 'package:taski_challenger_app/src/features/task/domain/repository/task_repository.dart';
import 'package:taski_challenger_app/src/features/task/domain/usecases/remove_task.dart';

class MockTaskRepository extends Mock implements TaskRepository {}

void main() {
  late TaskRepository repository;
  late RemoveTask usecase;
  const taskId = 1;

  setUp(() {
    repository = MockTaskRepository();
    usecase = RemoveTask(repository: repository);
  });

  group('Add task usecase', () {
    test(
      'should return failure when repository add task fail',
      () async {
        // arrange
        when(() => repository.removeTask(taskId))
        .thenAnswer((_) async => Left(AddTaskFailure()));
        // act
        final result = await usecase(taskId);
        
        // assert
        expect(result, Left(AddTaskFailure()));
      },
    );

    test(
      'should return a success result when usecase is called',
      () async {
         // arrange
        when(() => repository.removeTask(taskId))
        .thenAnswer((_) async => Right(null));
        // act
        final result = await usecase(taskId);
        
        // assert
        expect(result, Right(null));        
      },
    );
  });
}