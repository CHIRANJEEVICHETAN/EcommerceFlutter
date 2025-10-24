import 'package:avymart/core/models/role_model.dart';
import 'package:avymart/core/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserModel?> _createUserInFirestore(User user, {Role role = Role.customer}) async {
    final userDocRef = _firestore.collection('users').doc(user.uid);
    final userDoc = await userDocRef.get();

    if (!userDoc.exists) {
      final userModel = UserModel(
        uid: user.uid,
        email: user.email,
        phoneNumber: user.phoneNumber,
        role: role,
      );
      await userDocRef.set(userModel.toFirestore());
      return userModel;
    }
    return UserModel.fromFirestore(userDoc);
  }

  Future<UserModel?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = userCredential.user;
      if (user != null) {
        final userDoc = await _firestore.collection('users').doc(user.uid).get();
        return UserModel.fromFirestore(userDoc);
      }
      return null;
    } on FirebaseAuthException {
      // Handle error
      return null;
    }
  }

  Future<UserModel?> signUpWithEmailAndPassword(
      String email, String password, Role role) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = userCredential.user;
      if (user != null) {
        return await _createUserInFirestore(user, role: role);
      }
      return null;
    } on FirebaseAuthException {
      // Handle error
      return null;
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  Future<void> sendOtp(
      {required String phoneNumber,
      required BuildContext context,
      required Function(String, int?) codeSent,
      required Function(PhoneAuthCredential) verificationCompleted,
      required Function(FirebaseAuthException) verificationFailed}) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  Future<UserModel?> verifyOtp(
      {required String verificationId, required String smsCode}) async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      final userCredential = await _firebaseAuth.signInWithCredential(credential);
      final user = userCredential.user;
       if (user != null) {
        return await _createUserInFirestore(user);
      }
      return null;
    } on FirebaseAuthException {
      // Handle error
      return null;
    }
  }

  Future<Role?> getUserRole(String uid) async {
    try {
      final userDoc = await _firestore.collection('users').doc(uid).get();
      if (userDoc.exists) {
        return Role.values.firstWhere(
            (e) => e.toString() == 'Role.${userDoc.data()!['role']}');
      }
      return null;
    } catch (e) {
      return null;
    }
  }
}
