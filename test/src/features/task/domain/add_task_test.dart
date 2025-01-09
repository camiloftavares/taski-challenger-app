import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:taski_challenger_app/src/core/errors/failure.dart';
import 'package:taski_challenger_app/src/features/task/domain/entities/task.dart';
import 'package:taski_challenger_app/src/features/task/domain/repository/task_repository.dart';
import 'package:taski_challenger_app/src/features/task/domain/usecases/add_task.dart';

class MockTaskRepository extends Mock implements TaskRepository {}

void main() {
  late TaskRepository repository;
  late AddTask usecase;
  const task = Note(id: 10, title: 'title', note: '');

  setUp(() {
    repository = MockTaskRepository();
    usecase = AddTask(repository: repository);
  });

  group('Add task usecase', () {
    test(
      'should return failure when repository add task fail',
      () async {
        // arrange
        when(() => repository.addTask(task))
        .thenAnswer((_) async => Left(AddTaskFailure()));
        // act
        final result = await usecase(task);
        
        // assert
        expect(result, Left(AddTaskFailure()));
      },
    );

    test(
      'should return a success result when usecase is called',
      () async {
         // arrange
        when(() => repository.addTask(task))
        .thenAnswer((_) async => Right(null));
        // act
        final result = await usecase(task);
        
        // assert
        expect(result, Right(null));        
      },
    );
  });
}