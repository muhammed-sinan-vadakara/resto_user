import 'package:resto_user/features/history/domain/entity/my_order_entity.dart';
import 'package:resto_user/features/history/domain/entity/order_item_entity.dart';
import 'package:resto_user/features/history/domain/repository/my_order_repository.dart';

class MyOrderUsecase {
  final MyOrderRepository repository;
  MyOrderUsecase({required this.repository});

  Stream<List<MyOrderEntity>> call() async* {
    try {
      final orderStream = repository.getAll();
      await for (final orders in orderStream) {
        yield [
          for (final order in orders)
            MyOrderEntity(
                id: order.id,
                uid: order.uid,
                location: order.location,
                time: order.time,
                date: order.date,
                items: [
                  for (final data in order.items)
                    OrderItemEntity(
                        productId: data.productId,
                        type: data.type,
                        quantity: data.quantity)
                ])
        ];
      }
    } catch (e) {
      throw Exception("NO DATA");
    }
  }
}
