import 'package:fpdart/fpdart.dart';
import 'package:taski_challenger_app/src/core/errors/failure.dart';

typedef Result<E> = Either<Failure, E>;