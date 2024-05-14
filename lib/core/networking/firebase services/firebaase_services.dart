// ignore_for_file: avoid_print
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:khedma_tech/core/models/user_model.dart';

class AppFireBaseHelper {

  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  static const String userCollection = "Users";

  static Future<UserCredential> createUser(
      {required String email,required String password}) async {
    final auth = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return auth;
  }

  static Future<UserCredential> logIn({required String email,required String password}) async {
    final auth = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return auth;
  }

  static CollectionReference<UserModel> getUserCollection(){
    var reference = FirebaseFirestore.instance.collection(userCollection).withConverter(
      fromFirestore: (snapshot, options) {
        Map<String , dynamic>? doc = snapshot.data();
        return UserModel.fromMap(doc!);
      },
      toFirestore: (user, options) {
        return user.toMap();
      },
    );
    return reference;
  }

 static Future<void> addNewUser({required UserModel user})async{
    var userCollection = getUserCollection();
    var docReference = userCollection.doc(user.id);
    await docReference.set(user);
  }

  static Future<UserModel?> getUser({required String userId})async{
    var userCollection = getUserCollection();
    var docReference = userCollection.doc(userId);
    var snapshot = await docReference.get();
    var user = snapshot.data();
    return user;
  }

  static updateUserImage({required String userId,required String image})async{
    var userCollection = getUserCollection();
    var docReference = userCollection.doc(userId);
    await docReference.update({'image': image});
  }

  static Future<String?> uploadImage({required XFile file})async{
    String uniqueFileName = '${DateTime.now().microsecondsSinceEpoch.toString()}${file.path.split('/').last}';
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages =
    referenceRoot.child('images');
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    try {
      await referenceImageToUpload.putFile(File(file.path));
      String image = await referenceImageToUpload.getDownloadURL();
      print(image);
      return image;
    } catch (error) {
      print('$error');
      return null;
     }
   }


  static Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

}
