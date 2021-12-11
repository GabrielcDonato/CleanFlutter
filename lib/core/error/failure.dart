import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String? message;

  Failure({this.message});

  @override
  List<Object> get props => throw UnimplementedError();
}

class ServerFailure extends Failure {
  @override
  String get message => 'Não foi possivel processar seu pedido, tente novamente mais tarde.';
}

class NotFoundFailure extends Failure {
  @override
  String get message => 'Registro não encontrado.';
}
