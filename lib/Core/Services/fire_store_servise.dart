import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_store/Core/Services/data_base_service.dart';

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
  Future<dynamic> getData({
    required String path,
    String? documentId,
    Map<String, dynamic>? query,
  }) async {
    if (documentId != null) {
      var data = await firestore.collection(path).doc(documentId).get();
      print("🔹 Retrieved document data: ${data.data()}");
      return data.data();
    } else {
      Query<Map<String, dynamic>> data = firestore.collection(path);

      if (query != null) {
        if (query.containsKey('orderBy')) {
          var orderByField = query['orderBy'];
          bool descending = query['descending'] ?? false;
          data = data.orderBy(orderByField, descending: descending);
        }

        if (query.containsKey('limit')) {
          int limit = query['limit'];
          data = data.limit(limit);
        }
      }

      var result = await data.get();
      var listData = result.docs.map((e) => e.data()).toList();
      print("🔹 Retrieved collection data from [$path]: $listData");
      return listData;
    }
  }

  @override
  Future<bool> CheckisDataExiext(
      {required String path, required String DocusUid}) async {
    var data = await firestore.collection(path).doc(DocusUid).get();
    return data.exists;
  }
}
