import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'doctor.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class HomeResponse extends HiveObject{
  @HiveField(0)
  List<Category?>? data;

  HomeResponse({this.data});

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

@JsonSerializable()
@HiveType(typeId: 1)
class Category extends HiveObject{
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  List<Doctor?>? doctors;
  Category({this.doctors, this.id, this.name});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@JsonSerializable()
@HiveType(typeId: 2)
class Doctor {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? email;
  @HiveField(3)
  String? phone;
  @HiveField(4)
  String? photo;
  @HiveField(5)
  String? gender;
  @HiveField(6)
  String? address;
  @HiveField(7)
  String? description;
  @HiveField(8)
  String? degree;
  @HiveField(9)
  Specialization? specialization;
  @HiveField(10)
  City? city;
  @HiveField(11)
  int? appointPrice;
  @HiveField(12)
  String? startTime;
  @HiveField(13)
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
@HiveType(typeId: 3)
class Specialization {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;

  Specialization({this.id, this.name});

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@JsonSerializable()
@HiveType(typeId: 4)
class City {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  Specialization? governrate;

  City({this.id, this.name, this.governrate});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
