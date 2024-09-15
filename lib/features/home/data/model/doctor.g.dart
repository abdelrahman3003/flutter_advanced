// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) => HomeResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      doctors: (json['doctors'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Doctor.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctors,
    };

Doctor _$DoctorFromJson(Map<String, dynamic> json) => Doctor(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
      degree: json['degree'] as String?,
      specialization: json['specialization'] == null
          ? null
          : Specialization.fromJson(
              json['specialization'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      appointPrice: (json['appointPrice'] as num?)?.toInt(),
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$DoctorToJson(Doctor instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'address': instance.address,
      'description': instance.description,
      'degree': instance.degree,
      'specialization': instance.specialization,
      'city': instance.city,
      'appointPrice': instance.appointPrice,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

Specialization _$SpecializationFromJson(Map<String, dynamic> json) =>
    Specialization(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SpecializationToJson(Specialization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      governrate: json['governrate'] == null
          ? null
          : Specialization.fromJson(json['governrate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'governrate': instance.governrate,
    };
