import 'package:clean_architecture_experts_club/features/auth/domain/repositories/do_login_repository.dart';

class DoLoginDataSourceMock extends Mock DoLoginDataSource

void main() {
  DoLoginDataSource _dataSource = DoLoginDataSource();
  DoLoginRepository _repository = DoLoginRepositoryImpl(_dataSource);
}
