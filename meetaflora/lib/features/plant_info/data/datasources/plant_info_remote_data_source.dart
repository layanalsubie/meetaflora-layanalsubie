import 'package:injectable/injectable.dart';
import 'package:meetaflora/features/plant_info/data/models/plant_info_model.dart';
import 'package:meetaflora/core/errors/network_exceptions.dart';


abstract class BasePlantInfoRemoteDataSource {
  Future<PlantInfoModel> getPlantInfo();
}


@LazySingleton(as: BasePlantInfoRemoteDataSource)
class PlantInfoRemoteDataSource implements BasePlantInfoRemoteDataSource {
 

    @override
  Future<PlantInfoModel> getPlantInfo() async {
    try {
      return PlantInfoModel(plantName: '', description: '', careTips: '', funFact: '');
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
