import 'package:resto_user/features/history/data/model/my_order_model.dart';

abstract class MyOrderDataSource{
  Stream<List<MyOrderModel>>getAll();

  
}