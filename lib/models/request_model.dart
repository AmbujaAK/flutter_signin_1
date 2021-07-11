import 'dart:convert';

class RequestModel {
  String usernameOrEmail;
  String password;

  RequestModel({
    required this.usernameOrEmail,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'usernameOrEmail': usernameOrEmail,
      'password': password,
    };
  }

  factory RequestModel.fromMap(Map<String, dynamic> map) {
    return RequestModel(
      usernameOrEmail: map['usernameOrEmail'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RequestModel.fromJson(String source) =>
      RequestModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'RequestModel(usernameOrEmail: $usernameOrEmail, password: $password)';
}
