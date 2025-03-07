import 'package:cloud_firestore/cloud_firestore.dart';

abstract class DataBaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? docimentId,
  });

  Future<dynamic> getData({
    required String path,
    String? documentId,
    Map<String, dynamic>? query,
  });

  Future<bool> CheckisDataExiext({
    required String path,
    required String DocusUid,
  }) async {
    var data = await firestore.collection(path).doc(DocusUid).get();
    print("🔹 Document [$DocusUid] exists in [$path]: ${data.exists}");
    return data.exists;
  }
}
