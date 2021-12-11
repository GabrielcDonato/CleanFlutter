import 'package:clean_architecture_experts_club/core/error/failure.dart';
import 'package:clean_architecture_experts_club/features/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class DoLoginRepository {
  Future<Either<Failure, User>> doLogin({
    required String email,
    required String password,
  });
}
