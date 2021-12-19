import 'package:clean_architecture_experts_club/core/error/failure.dart';
import 'package:clean_architecture_experts_club/features/auth/data/datasources/do_login_data_source_api.dart';
import 'package:clean_architecture_experts_club/features/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class DoLoginRepository {
  DoLoginRepository(DoLoginDataSourceApi doLoginDataSourceApi);

  Future<Either<Failure, User>> doLogin({required String email, required String password});
}
