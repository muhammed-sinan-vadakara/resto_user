import 'package:resto_user/features/checkout/data/data_source/coupon_firestore_datasource.dart';
import 'package:resto_user/features/checkout/domain/entity/condition_entity.dart';
import 'package:resto_user/features/checkout/domain/entity/coupon_entity.dart';
import 'package:resto_user/features/checkout/domain/repository/coupon_repository.dart';

class CouponRepositoryImpl implements CouponRepository {
  final CouponFireStoreDatasource datasource;

  CouponRepositoryImpl({required this.datasource});
  @override
  Stream<List<CouponEntity>> getAll() async* {
    final data = datasource.getAll();
    await for (final snapshote in data) {
      final docs = snapshote;
      yield [
        for (final coupon in docs)
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
                    value: c.value),
            ],
          ),
      ];
    }
  }
}
