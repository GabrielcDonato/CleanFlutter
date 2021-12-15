import 'dart:convert';

import 'package:clean_architecture_experts_club/features/auth/domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required String name,
    required DateTime bornDate,
    required String pictureUrl,
    required String email,
  }) : super(
          name: name,
          bornDate: bornDate,
          pictureUrl: pictureUrl,
          email: email,
        );
  @override
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'bornDate': bornDate.millisecondsSinceEpoch,
      'pictureUrl': pictureUrl,
      'email': email,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      bornDate: DateTime.parse(map['bornDate']),
      pictureUrl: map['pictureUrl'] ?? '',
      email: map['email'] ?? '',
    );
  }
  factory UserModel.fromFireBase(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      bornDate: DateTime.parse(map['bornDate']),
      pictureUrl: map['pictureUrl'] ?? '',
      email: map['email'] ?? '',
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
