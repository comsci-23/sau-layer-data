import 'package:dartz/dartz.dart';
import 'package:sau_layer_data/core/error/failure.dart';
import 'package:sau_layer_data/data/datasources/nasa_layer_service.dart';
import 'package:sau_layer_data/domain/entities/nasa_layer_data.dart';
import 'package:sau_layer_data/domain/repositories/nasa_layer_repository.dart';


class NasaLayerRepositoryImpl implements NasaLayerRepository {
  final NasaLayerService service;

  NasaLayerRepositoryImpl(this.service);

  @override
  Future<Either<Failure, List<NasaLayerData>>> nasaHistory() async {
    try {
      final data = await service.nasaHistory();
      return Right(data);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}