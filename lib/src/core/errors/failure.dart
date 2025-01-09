import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? message;

  const Failure(this.message);

  @override
  List<Object?> get props => [message];
}

class AddTaskFailure extends Failure {
  const AddTaskFailure({String? message}) : super(message);
}

class LoadTasksFailure extends Failure {
  const LoadTasksFailure({String? message}) : super(message);
}