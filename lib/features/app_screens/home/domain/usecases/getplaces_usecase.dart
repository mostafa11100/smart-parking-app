import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:csc_picker_plus/model/select_status_model.dart';
import 'package:either_dart/either.dart';
import 'package:parking/core/utils/classes/error_handle.dart';
import 'package:parking/features/app_screens/home/domain/entitys/place_popular.dart';
import 'package:parking/features/app_screens/home/domain/interfaces/interface_getplaces.dart';

class GetplacesUsecase {
  GetplacesUsecase(this.getplaces);
  GetPlacesInterface getplaces;
  Future<Either<List<PopularPlaceEntity>, ErrorHandle>?> getplacesusecase(
      {country, required DateTime ariv, required DateTime leav}) async {
    try {
      Either<List<PopularPlaceEntity>, ErrorHandle>? result =
          await getplaces.getplace(
              country: Country,
              timearive: convertfromtimestmp(ariv),
              timeend: convertfromtimestmp(leav));
      return result;
    } catch (e) {
      return Right(ErrorHandle.erorhndle(e.toString()));
    }
  }
}

Timestamp converttotimestmp(DateTime time) {
  return Timestamp.fromDate(time);
}

Timestamp convertfromtimestmp(DateTime time) {
  return Timestamp.fromMillisecondsSinceEpoch(time.millisecondsSinceEpoch);
}
