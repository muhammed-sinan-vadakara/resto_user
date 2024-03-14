import 'package:resto_user/features/checkout/data/model/coupon_model.dart';

abstract class CouponFireStoreDatasource {
  Stream<List<CouponModel>> getAll();
}
