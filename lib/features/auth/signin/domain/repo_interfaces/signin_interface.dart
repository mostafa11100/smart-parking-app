import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:parking/core/utils/classes/error_handle.dart';
import 'package:parking/features/auth/signin/data/model/signin_model.dart';

abstract class SigninInterface {
  Future<Either<UserCredential, ErrorHandle>> signin(SigninModel userdata);
}
