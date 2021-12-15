import 'package:clean_architecture_experts_club/core/error/failure.dart';
import 'package:clean_architecture_experts_club/features/auth/data/datasources/do_login_data_source.dart';
import 'package:clean_architecture_experts_club/features/auth/data/models/user_model.dart';

class DoLoginDataSourceApi implements DoLoginDataSource {
  @override
  Future<UserModel> doLogin({required String email, required String password}) {
    try {
      return Future.value(
        UserModel.fromMap(tUserApi),
      );
    } catch (e) {
      throw (ServerFailure());
    }
  }
}

var tUserApi = {"name": "Nome", "bornDate": DataTime.now().toIso8601String(), "pictureUrl": "https://test.com/photo_png", "email": "email@email.com"};

class DataTime {
  static now() {}
}
