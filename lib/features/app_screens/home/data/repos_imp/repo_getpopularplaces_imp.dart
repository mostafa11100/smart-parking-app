import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/src/either.dart';
import 'package:parking/core/utils/classes/error_handle.dart';
import 'package:parking/features/app_screens/home/data/apis/getdata_firebase.dart';
import 'package:parking/features/app_screens/home/data/mappers/places_mapper.dart';
import 'package:parking/features/app_screens/home/data/models/parking_model.dart';
import 'package:parking/features/app_screens/home/domain/entitys/place_popular.dart';
import 'package:parking/features/app_screens/home/domain/interfaces/interface_getplaces.dart';

class GetpopularplacesImp extends GetPlacesInterface {
  @override
  Future<Either<List<PopularPlaceEntity>, ErrorHandle>?> getplace(
      {required country,
      required Timestamp timearive,
      required Timestamp timeend}) async {
    Either<List<PopularPlaceEntity>, ErrorHandle>? returndata;
    try {
      Either<QuerySnapshot<Map<String, dynamic>>, ErrorHandle> result =
          await GetFromFirebase.firebasegetdata(
              collection: "places",
              filter: Filter.and(
                  Filter("country", isEqualTo: "egypt"),
                  Filter.or(
                      Filter('timearrive',
                          isGreaterThanOrEqualTo: Timestamp.now()),
                      Filter('timearrive', isLessThanOrEqualTo: timeend))));

      result.fold((left) {
        List<PopularPlaceEntity> listofplacesentity = left.docs
            .map((el) => ParkingModel.fromjson(el.data()).toplaceentity())
            .toList();
        returndata = Left(listofplacesentity);
      }, (right) {
        returndata = Right(right);
      });
    } catch (e) {
      returndata = Right(ErrorHandle.erorhndle(e.toString()));
    }
    return returndata;
  }
}
