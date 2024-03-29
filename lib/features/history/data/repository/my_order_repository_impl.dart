import 'package:resto_user/features/history/data/datasource/my_order_datasource.dart';
import 'package:resto_user/features/history/domain/entity/my_order_entity.dart';
import 'package:resto_user/features/history/domain/entity/order_item_entity.dart';
import 'package:resto_user/features/history/domain/repository/my_order_repository.dart';

class MyOrderRepositoryImpl implements MyOrderRepository {
  final MyOrderDataSource dataSource;
  MyOrderRepositoryImpl({required this.dataSource});

  @override
  Stream<List<MyOrderEntity>> getAll() async* {
    final order = dataSource.getAll();
    await for (final dd in order) {
      final orders = dd;
      yield [
        for (final data in orders)
          MyOrderEntity(
              id: data.id,
              uid: data.uid,
              location: data.location,
              time: data.time,
              date: data.date,
              items: [
                for (final type in data.items)
                  OrderItemEntity(
                      productId: type.productId,
                      type: type.type,
                      quantity: type.quantity)
              ])
      ];
    }
  }
}
