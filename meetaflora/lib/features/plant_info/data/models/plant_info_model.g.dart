// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlantInfoModel _$PlantInfoModelFromJson(Map<String, dynamic> json) =>
    _PlantInfoModel(
      plantName: json['plantName'] as String,
      description: json['description'] as String,
      careTips: json['careTips'] as String,
      funFact: json['funFact'] as String,
    );

Map<String, dynamic> _$PlantInfoModelToJson(_PlantInfoModel instance) =>
    <String, dynamic>{
      'plantName': instance.plantName,
      'description': instance.description,
      'careTips': instance.careTips,
      'funFact': instance.funFact,
    };
