import 'package:clean_architecture_experts_club/features/auth/domain/entities/user.dart';
import 'package:clean_architecture_experts_club/features/auth/domain/repositories/do_login_repository.dart';
import 'package:clean_architecture_experts_club/features/auth/domain/usecases/do_login.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DoLoginRepositoryMock extends Mock implements DoLoginRepository {}

void main() {
  DoLoginRepository _doLoginRepository = DoLoginRepositoryMock();

  DoLogin _doLogin = DoLogin(_doLoginRepository);

  test(
    'deve realizar login',
    () async {
      when(_doLoginRepository.doLogin(
        email: 'email@email.com',
        password: '123456',
      )).thenAnswer((_) async => Right(tUser));

      var result = await _doLogin(
        DoLoginParams(
          email: 'email@email.com',
          password: '123456',
        ),
      );

      expect(result, tUser);
    },
  );
}

var tUser = User(
  bornDate: DateTime.now(),
  email: 'email@email.com',
  name: 'Nome Usuário',
  pictureUrl: 'https://pictureuser.com.br/photo',
);
