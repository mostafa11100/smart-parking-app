import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:parking/core/utils/classes/error_handle.dart';

class GetFromFirebase {
  static FirebaseFirestore? db;
  static Future<Either<QuerySnapshot<Map<String, dynamic>>, ErrorHandle>>
      firebasegetdata({collection, filter}) async {
    try {
      db = FirebaseFirestore.instance;
      QuerySnapshot<Map<String, dynamic>> docRef =
          await db!.collection(collection).where(filter).get();
      return Left(docRef);
    } catch (e) {
      return Right(ErrorHandle.erorhndle(e.toString()));
    }
  }
}
