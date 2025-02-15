class ErrorHandle {
  String? eror;
  ErrorHandle.erorhndle(String error) {
    switch (error) {
      case 'user-not-found':
        eror = "No user found for that email";
        break;
      case 'wrong-password':
        eror = "Wrong password provided for that user";
        break;
      default:
        eror = "oops idont know what happen ==$error";
        break;
    }
  }
}
