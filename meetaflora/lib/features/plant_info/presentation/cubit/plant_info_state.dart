import 'package:equatable/equatable.dart';
import 'package:meetaflora/features/plant_info/domain/entities/plant_info_entity.dart';

abstract class PlantInfoState extends Equatable {
  const PlantInfoState();

  @override
  List<Object?> get props => [];
}

class PlantInfoInitialState extends PlantInfoState {}

class PlantInfoSuccessState extends PlantInfoState {
  final PlantInfoEntity details;

  const PlantInfoSuccessState({required this.details});

  @override
  List<Object?> get props => [details];
}

class PlantInfoLoadingState extends PlantInfoState {}

class PlantInfoErrorState extends PlantInfoState {
  final String message;
  const PlantInfoErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

