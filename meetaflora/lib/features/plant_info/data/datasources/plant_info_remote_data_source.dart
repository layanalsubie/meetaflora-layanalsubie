import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:meetaflora/core/services/local_keys_service.dart';
import 'package:meetaflora/features/plant_info/data/models/plant_info_model.dart';
import 'package:meetaflora/core/errors/network_exceptions.dart';


abstract class BasePlantInfoRemoteDataSource {
  Future<PlantInfoModel> getPlantInfo();
}


@LazySingleton(as: BasePlantInfoRemoteDataSource)
class PlantInfoRemoteDataSource implements BasePlantInfoRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   PlantInfoRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<PlantInfoModel> getPlantInfo() async {
    try {
      return PlantInfoModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
