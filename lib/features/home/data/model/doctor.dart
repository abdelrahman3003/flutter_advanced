import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor.g.dart';

@JsonSerializable()
class HomeResponse {
  List<Category?>? data;

  HomeResponse({this.data});

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

@JsonSerializable()
class Category {
  int? id;
  String? name;
  List<Doctor?>? doctors;

  Category({this.doctors, this.id, this.name});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@JsonSerializable()
class Doctor {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  Specialization? specialization;
  City? city;
  int? appointPrice;
  String? startTime;
  String? endTime;

  Doctor(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      this.description,
      this.degree,
      this.specialization,
      this.city,
      this.appointPrice,
      this.startTime,
      this.endTime});

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}

@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});
  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@JsonSerializable()
class City {
  int? id;
  String? name;
  Specialization? governrate;

  City({this.id, this.name, this.governrate});
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
