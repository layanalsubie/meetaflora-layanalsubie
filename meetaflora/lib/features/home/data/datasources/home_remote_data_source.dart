import 'package:injectable/injectable.dart';
import 'package:meetaflora/features/home/data/models/home_model.dart';


abstract class BaseHomeRemoteDataSource {
  Future<HomeModel> getHome();
}


@LazySingleton(as: BaseHomeRemoteDataSource)
class HomeRemoteDataSource implements BaseHomeRemoteDataSource {
  @override
  Future<HomeModel> getHome() {
    // TODO: implement getHome
    throw UnimplementedError();
  }

}
