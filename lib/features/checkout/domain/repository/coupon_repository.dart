import 'package:resto_user/features/checkout/domain/entity/coupon_entity.dart';

abstract class CouponRepository {
  Stream<List<CouponEntity>> getAll();
}
