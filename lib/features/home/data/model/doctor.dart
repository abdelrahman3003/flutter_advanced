import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor.g.dart';

@JsonSerializable()
class Catergories {
  List<DoctorsList?>? data;

  Catergories({this.data});

  factory Catergories.fromJson(Map<String, dynamic> json) =>
      _$CatergoriesFromJson(json);
}

@JsonSerializable()
class DoctorsList {
  int? id;
  String? name;
  List<Doctor?>? doctors;

  DoctorsList({this.doctors, this.id, this.name});

  factory DoctorsList.fromJson(Map<String, dynamic> json) =>
      _$DoctorsListFromJson(json);
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
