import 'package:firebase_auth/firebase_auth.dart';
import 'package:either_dart/either.dart';
import 'package:parking/core/utils/classes/error_handle.dart';
import 'package:parking/features/auth/signin/data/model/signin_model.dart';

Future<Either<UserCredential, ErrorHandle>> signinemailandpasswordfunc(
    {required SigninModel userdata}) async {
  try {
    UserCredential credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: userdata.email!, password: userdata.password!);
    return Left(credential);
  } on FirebaseAuthException catch (e) {
    return Right(ErrorHandle.erorhndle(e.code));
  } catch (e) {
    return Right(ErrorHandle.erorhndle(e.toString()));
  }
}
