import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:parking/core/utils/classes/error_handle.dart';
import 'package:parking/features/app_screens/home/domain/entitys/place_popular.dart';

abstract class GetPlacesInterface {
  Future<Either<List<PopularPlaceEntity>, ErrorHandle>?> getplace(
      {required country,
      required Timestamp timearive,
      required Timestamp timeend});
}
