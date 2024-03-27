import 'package:resto_user/features/history/domain/entity/my_order_entity.dart';

abstract class MyOrderRepository{
  Stream<List<MyOrderEntity>> getAll();
}