import 'package:clean_architecture_experts_club/features/auth/domain/entities/user.dart';

abstract class DoLoginDataSource {
  Future<User> doLogin({required String email, required String password});
}
