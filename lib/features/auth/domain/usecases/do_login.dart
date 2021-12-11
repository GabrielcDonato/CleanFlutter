import 'package:clean_architecture_experts_club/core/usecases/usecases.dart';


class DoLoginParams {
  final String email;
  final String password;

  DoLoginParams({
    required this.email,
    required this.password,
  });
}

class DoLogin extends UseCase<>


