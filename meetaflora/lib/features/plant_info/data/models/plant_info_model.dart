import 'package:meetaflora/features/plant_info/domain/entities/plant_info_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'plant_info_model.freezed.dart';
part 'plant_info_model.g.dart';

@freezed
abstract class PlantInfoModel with _$PlantInfoModel {
  const factory PlantInfoModel({
    required String plantName,
    required String description,
    required String careTips,
    required String funFact,
  }) = _PlantInfoModel;

  factory PlantInfoModel.fromJson(Map<String, Object?> json) =>
      _$PlantInfoModelFromJson(json);
}

extension PlantInfoModelMapper on PlantInfoModel {
  PlantInfoEntity toEntity() {
    return PlantInfoEntity(
      plantName: plantName,
      description: description,
      careTips: careTips,
      funFact: funFact,
    );
  }
}
