import 'package:fusion/utils/const.dart';

class DBController {
  createWarehouse(user, warehousename) async {
    firebaseFirestore
        .collection('users')
        .doc(user)
        .collection(warehousename)
        .doc()
        .set({
      'fname': user.displayName,
      'username': user.email,
      'uid': user.uid,
      'email': user.email,
      'userImage': user.photoURL,
    });
  }
}

void main() {
  DBController().createWarehouse("user", "warehousename");
}
