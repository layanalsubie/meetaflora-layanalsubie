import 'package:equatable/equatable.dart';

class PlantInfoEntity extends Equatable {
  final String plantName;
  final String description;
  final String careTips;
  final String funFact;

  const PlantInfoEntity({
    required this.plantName,
    required this.description,
    required this.careTips,
    required this.funFact,
  });

  @override
  List<Object?> get props => [plantName, description, careTips, funFact];
}
