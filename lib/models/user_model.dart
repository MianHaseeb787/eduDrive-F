import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? name;
  String? email;
  String? Rool;

  UserModel({this.email, this.name, this.Rool});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['email'];
    name = json['name'];
    name = json['rool'];
  }
}
