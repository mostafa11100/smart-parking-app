import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:parking/core/utils/classes/error_handle.dart';
import 'package:parking/features/auth/signin/data/model/signin_model.dart';
import 'package:parking/features/auth/signin/domain/repo_interfaces/signin_interface.dart';

class SigninemailandpassUseCase {
  SigninInterface signin;
  SigninemailandpassUseCase(this.signin);
  Future<Either<UserCredential, ErrorHandle>> signinemailadnpassword(
      SigninModel userdata) async {
    Either<UserCredential, ErrorHandle> result = await signin.signin(userdata);

    return result;
  }
}
