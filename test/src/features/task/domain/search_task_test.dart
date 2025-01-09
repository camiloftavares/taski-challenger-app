import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:taski_challenger_app/src/core/errors/failure.dart';
import 'package:taski_challenger_app/src/features/task/domain/entities/task.dart';
import 'package:taski_challenger_app/src/features/task/domain/repository/task_repository.dart';
import 'package:taski_challenger_app/src/features/task/domain/usecases/search_task.dart';

class MockTaskRepository extends Mock implements TaskRepository {}

void main() {
  late TaskRepository repository;
  late SearchTask usecase;
  const query = 'taski';
  const tasks = [Note(id: 10, title: 'title', note: '')];

  setUp(() {
    repository = MockTaskRepository();
    usecase = SearchTask(repository: repository);
  });

  group('Get tasks usecase', () {
    test(
      'should return failure when repository add task fail',
      () async {
        // arrange
        when(() => repository.getTasksBy(query: query))
        .thenAnswer((_) async => Left(LoadTasksFailure()));
        // act
        final result = await usecase(query);
        
        // assert
        expect(result, Left(LoadTasksFailure()));
      },
    );

    test(
      'should return a success result when usecase is called',
      () async {
         // arrange
        when(() => repository.getTasksBy(query: query))
        .thenAnswer((_) async => Right(tasks));
        // act
        final result = await usecase(query);
        
        // assert
        expect(result, Right(tasks));        
      },
    );
  });
}