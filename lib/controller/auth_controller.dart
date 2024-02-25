import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //for signup
  // Future<String> signUpUSers(String email, String fullName, String phoneNumber,
  //     String password, Uint8List? image) async {
  //   String res = 'Some error occured';

  //   try {
  //     if (email.isNotEmpty &&
  //         fullName.isNotEmpty &&
  //         phoneNumber.isNotEmpty &&
  //         password.isNotEmpty &&
  //         image != null) {
  //       //Create the users

  //       UserCredential cred = await _auth.createUserWithEmailAndPassword(
  //           email: email, password: password);

  //       res = 'success';
  //     } else {
  //       res = 'Please Fields must not be empty';
  //     }
  //   } catch (e) {}

  //   return res;
  // }
  //for login
  loginUsers(String email, String password) async {
    String res = 'something went wrong';

    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);

        res = 'success';
      } else {
        res = 'Please Fields must not be empty';
      }
    } catch (e) {
      res = e.toString();
    }

    return res;
  }
}
