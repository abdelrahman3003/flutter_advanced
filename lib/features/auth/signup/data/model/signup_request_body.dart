import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  final String phone;
  final int gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String confirmpaswword;

  SignupRequestBody(
      {required this.name,
      required this.email,
      required this.phone,
      this.gender = 0,
      required this.password,
      required this.confirmpaswword});
  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
