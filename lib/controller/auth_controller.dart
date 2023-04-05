import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edudrive/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AuthController extends GetxController {
  var myuser = UserModel().obs;
  getUserInfo() {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .snapshots()
        .listen((event) {
      myuser.value = UserModel.fromJson(event.data()!);
    });
  }
}
