import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetaflora/features/plant_info/domain/use_cases/plant_info_use_case.dart';
import 'package:meetaflora/features/plant_info/presentation/cubit/plant_info_state.dart';

class PlantInfoCubit extends Cubit<PlantInfoState> {
  final PlantInfoUseCase _plantInfoUseCase;

  PlantInfoCubit(this._plantInfoUseCase) : super(PlantInfoInitialState());

  Future<void> getPlantInfoMethod({
    required String plantName,
    required String imageUrl,
  }) async {

    emit(PlantInfoInitialState());

    final result = await _plantInfoUseCase.getPlantInfo(
      plantName: plantName,
      imageUrl: imageUrl,
    );
    result.when(
      (success) {
        emit(PlantInfoSuccessState(details: success));
      },
      (whenError) {
        emit(PlantInfoErrorState(message: whenError.toString()));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
