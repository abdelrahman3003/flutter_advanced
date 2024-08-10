import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_respons.g.dart';

@JsonSerializable()
class LoginRespons {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool? status;
  final int? code;

  LoginRespons({this.message, this.status, this.code, this.userData});
  factory LoginRespons.fromJson(Map<String, dynamic> json) =>
      _$LoginResponsFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  UserData({this.token, this.userName});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
