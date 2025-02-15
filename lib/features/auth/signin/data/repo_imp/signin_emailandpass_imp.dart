import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:parking/core/utils/classes/error_handle.dart';
import 'package:parking/features/auth/signin/data/data_source/signin_emailandpassword_function.dart';
import 'package:parking/features/auth/signin/data/model/signin_model.dart';
import 'package:parking/features/auth/signin/domain/repo_interfaces/signin_interface.dart';

class Signinemailandpass extends SigninInterface {
  @override
  Future<Either<UserCredential, ErrorHandle>> signin(
      SigninModel userdata) async {
    try {
      Either<UserCredential, ErrorHandle> result =
          await signinemailandpasswordfunc(userdata: userdata);
      return result;
    } catch (e) {
      return Right(ErrorHandle.erorhndle(e.toString()));
    }
  }
}
