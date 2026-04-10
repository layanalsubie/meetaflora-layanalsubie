import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetaflora/features/home/domain/use_cases/home_use_case.dart';
import 'package:meetaflora/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeUseCase _homeUseCase;

  HomeCubit(this._homeUseCase) : super(HomeInitialState());

  Future<void> searchPlantImages({
    required String query,
    int perPage = 10,
    int page = 1,
  }) async {
    emit(HomeLoadingState());

    final result = await _homeUseCase.searchPlantImages(
      query: query,
      perPage: perPage,
      page: page,
    );

    result.when(
      (success) {
        emit(HomeSuccessState(plants: success));
      },
      (whenError) {
        emit(HomeErrorState(message: whenError.toString()));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
