import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_store/Core/Services/data_base_service.dart';
import 'package:fruits_store/Features/Auth/data/models/user_model.dart';

class FireStoreServise implements DataBaseService {
  @override
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? docimentId,
  }) async {
    if (docimentId != null) {
      await firestore.collection(path).doc(docimentId).set(data);
    } else {
      await firestore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String documentId}) async {
    var data = await firestore.collection(path).doc(documentId).get();
    return data.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> CheckisDataExiext(
      {required String path, required String DocusUid}) async {
    var data = await firestore.collection(path).doc(DocusUid).get();
    return data.exists;
  }
}
