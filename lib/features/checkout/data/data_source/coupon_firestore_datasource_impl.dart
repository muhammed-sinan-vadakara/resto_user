import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto_user/features/checkout/data/data_source/coupon_firestore_datasource.dart';
import 'package:resto_user/features/checkout/data/model/coupon_model.dart';

class CouponFireStoreDatasourceImpl extends CouponFireStoreDatasource {
  final fireStore = FirebaseFirestore.instance;
  final collection =
      FirebaseFirestore.instance.collection('coupons').withConverter(
            fromFirestore: CouponModel.fromFirestore,
            toFirestore: (model, _) => model.toFirestore(),
          );

  @override
  Stream<List<CouponModel>> getAll() async* {
    final couponStream = collection.snapshots();
    await for (final coupons in couponStream) {
      yield [
        for (final coupon in coupons.docs) coupon.data(),
      ];
    }
  }
}
