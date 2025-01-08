import 'package:dartz/dartz.dart';
import 'package:sau_layer_data/core/error/failure.dart';
import 'package:sau_layer_data/domain/entities/nasa_layer_data.dart';

abstract class NasaLayerRepository {
  Future<Either<Failure, List<NasaLayerData>>> fetchLayerData();
}