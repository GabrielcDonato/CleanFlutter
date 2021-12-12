import 'package:clean_architecture_experts_club/features/auth/data/datasources/do_login_data_source.dart';
import 'package:clean_architecture_experts_club/features/auth/domain/entities/user.dart';

class DoLoginDataSourceFirebase implements DoLoginDataSource {
  @override
  Future<User> doLogin({required String email, required String password}) {
    throw UnimplementedError();
  }
}
