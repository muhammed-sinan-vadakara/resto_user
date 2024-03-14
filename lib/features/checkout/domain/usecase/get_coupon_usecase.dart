import 'package:resto_user/features/checkout/domain/entity/condition_entity.dart';
import 'package:resto_user/features/checkout/domain/entity/coupon_entity.dart';
import 'package:resto_user/features/checkout/domain/repository/coupon_repository.dart';

final class GetAllCouponsUseCase {
  final CouponRepository repository;

  GetAllCouponsUseCase({required this.repository});

  Stream<List<CouponEntity>> call() async* {
    try {
      final couponStream = repository.getAll();

      await for (final coupons in couponStream) {
        yield [
          for (final coupon in coupons)
            CouponEntity(
              id: coupon.id,
              title: coupon.title,
              code: coupon.code,
              couponType: coupon.couponType,
              percentageOrAmount: coupon.percentageOrAmount,
              condition: [
                for (final c in coupon.condition)
                  ConditionEntity(
                      count: c.count,
                      check: c.check,
                      logic: c.logic,
                      value: c.value)
              ],
            ),
        ];
      }
    } catch (e) {
      throw Exception('NO DATA');
    }
  }
}
