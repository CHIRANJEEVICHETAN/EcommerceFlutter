import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:avymart/core/models/role_model.dart';

class UserModel {
  final String uid;
  final String? email;
  final String? phoneNumber;
  final Role role;

  UserModel({
    required this.uid,
    this.email,
    this.phoneNumber,
    required this.role,
  });

  factory UserModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return UserModel(
      uid: doc.id,
      email: data['email'],
      phoneNumber: data['phoneNumber'],
      role: Role.values.firstWhere((e) => e.toString() == 'Role.${data['role']}'),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (email != null) 'email': email,
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      'role': role.toString().split('.').last,
    };
  }
}
