import 'package:dartz/dartz.dart';
import 'package:sau_layer_data/core/error/failure.dart';
import 'package:sau_layer_data/domain/entities/nasa_layer_data.dart';
import 'package:sau_layer_data/domain/repositories/nasa_layer_repository.dart';


class FetchLayerData {
  final NasaLayerRepository repository;

  FetchLayerData(this.repository);

  Future<Either<Failure, List<NasaLayerData>>> call() async {
    return await repository.fetchLayerData();
  }
}