import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class DoLoginRepositoryMock extends Mock implements DoLoginRepository {}

void main() {
  DoLoginRepository _doLoginRepository = DoLoginRepositoryMock();

  DoLogin _doLogin = DoLogin(repository);

  test(
    'deve realizar login',
    () async {
      when(() => _doLoginRepository.doLogin(
            email: anyNamed('email'),
            password: anyNamed('password'),
          )).thenReturn(() => Right(''));
    },
  );
}
