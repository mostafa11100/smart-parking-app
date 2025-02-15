import 'package:bloc/bloc.dart';
import 'package:csc_picker_plus/model/select_status_model.dart';
import 'package:either_dart/either.dart';
import 'package:meta/meta.dart';
import 'package:parking/core/utils/classes/error_handle.dart';
import 'package:parking/features/app_screens/home/data/repos_imp/repo_getpopularplaces_imp.dart';
import 'package:parking/features/app_screens/home/domain/entitys/place_popular.dart';
import 'package:parking/features/app_screens/home/domain/usecases/getplaces_usecase.dart';

part 'get_places_state.dart';

class GetPlacesCubit extends Cubit<GetPlacesState> {
  GetPlacesCubit() : super(GetPlacesInitial());
  GetplacesUsecase? getplacesUsecase;
  getplaces({country, starttime, endtime}) async {
    try {
      emit(GetPlacesLoading());
      getplacesUsecase = GetplacesUsecase(GetpopularplacesImp());
      Either<List<PopularPlaceEntity>, ErrorHandle>? result =
          await getplacesUsecase!.getplacesusecase(
              country: country ?? "egypt",
              ariv: starttime ?? DateTime.now(),
              leav: endtime ?? DateTime(2026));

      result!.fold((left) {
        emit(GetPlacesSuccess(left));
      }, (right) {
        emit(GetPlacesFail(right.eror!));
      });
    } catch (e) {
      emit(GetPlacesFail(e.toString()));
    }
  }
}
