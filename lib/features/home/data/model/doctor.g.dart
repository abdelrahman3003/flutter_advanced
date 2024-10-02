// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeResponseAdapter extends TypeAdapter<HomeResponse> {
  @override
  final int typeId = 0;

  @override
  HomeResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeResponse(
      data: (fields[0] as List?)?.cast<Category?>(),
    );
  }

  @override
  void write(BinaryWriter writer, HomeResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CategoryAdapter extends TypeAdapter<Category> {
  @override
  final int typeId = 1;

  @override
  Category read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Category(
      doctors: (fields[2] as List?)?.cast<Doctor?>(),
      id: fields[0] as int?,
      name: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Category obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.doctors);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DoctorAdapter extends TypeAdapter<Doctor> {
  @override
  final int typeId = 2;

  @override
  Doctor read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Doctor(
      id: fields[0] as int?,
      name: fields[1] as String?,
      email: fields[2] as String?,
      phone: fields[3] as String?,
      photo: fields[4] as String?,
      gender: fields[5] as String?,
      address: fields[6] as String?,
      description: fields[7] as String?,
      degree: fields[8] as String?,
      specialization: fields[9] as Specialization?,
      city: fields[10] as City?,
      appointPrice: fields[11] as int?,
      startTime: fields[12] as String?,
      endTime: fields[13] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Doctor obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.photo)
      ..writeByte(5)
      ..write(obj.gender)
      ..writeByte(6)
      ..write(obj.address)
      ..writeByte(7)
      ..write(obj.description)
      ..writeByte(8)
      ..write(obj.degree)
      ..writeByte(9)
      ..write(obj.specialization)
      ..writeByte(10)
      ..write(obj.city)
      ..writeByte(11)
      ..write(obj.appointPrice)
      ..writeByte(12)
      ..write(obj.startTime)
      ..writeByte(13)
      ..write(obj.endTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoctorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpecializationAdapter extends TypeAdapter<Specialization> {
  @override
  final int typeId = 3;

  @override
  Specialization read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Specialization(
      id: fields[0] as int?,
      name: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Specialization obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpecializationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CityAdapter extends TypeAdapter<City> {
  @override
  final int typeId = 4;

  @override
  City read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return City(
      id: fields[0] as int?,
      name: fields[1] as String?,
      governrate: fields[2] as Specialization?,
    );
  }

  @override
  void write(BinaryWriter writer, City obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.governrate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
