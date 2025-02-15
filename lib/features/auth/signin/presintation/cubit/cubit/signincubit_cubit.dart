import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:parking/core/utils/classes/error_handle.dart';
import 'package:parking/features/auth/signin/data/model/signin_model.dart';
import 'package:parking/features/auth/signin/domain/repo_interfaces/signin_interface.dart';
import 'package:parking/features/auth/signin/domain/usecases/emailand_pass_usecase.dart';

part 'signincubit_state.dart';

class SignincubitCubit extends Cubit<SignincubitState> {
  SignincubitCubit(this.signintype) : super(SignincubitInitial());
  SigninemailandpassUseCase? signinusecase;
  SigninInterface signintype;
  sinin({required SigninModel userdata}) async {
    emit(SignincubitLoading());
    signinusecase = SigninemailandpassUseCase(signintype);
    try {
      Either<UserCredential, ErrorHandle>? result =
          await signinusecase?.signinemailadnpassword(userdata);
      result!.fold((left) {
        emit(SignincubitSuccess(left));
      }, (right) {
        emit(SignincubiFail(right.eror!));
      });
    } catch (e) {
      emit(SignincubiFail(e.toString()));
    }
  }
}
