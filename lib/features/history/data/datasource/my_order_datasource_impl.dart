import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto_user/features/history/data/datasource/my_order_datasource.dart';
import 'package:resto_user/features/history/data/model/my_order_model.dart';

class MyOrderDatasourceImpl implements MyOrderDataSource {
  final db = FirebaseFirestore.instance;
  final collection =
      FirebaseFirestore.instance.collection("orders").withConverter(
            fromFirestore: MyOrderModel.fromFirestore,
            toFirestore: (model, _) => model.toFirestore(),
          );

  @override
  Stream<List<MyOrderModel>> getAll() async* {
    final orderStream = collection.snapshots(includeMetadataChanges: true);
    await for (final orders in orderStream) {
      yield [
        for (final order in orders.docs) order.data(),
      ];
    }
  }
}
