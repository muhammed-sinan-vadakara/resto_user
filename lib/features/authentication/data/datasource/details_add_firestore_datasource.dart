import 'package:resto_user/features/authentication/data/model/details_add_model.dart';

abstract class DetailsAddFirestoreDatasource {
  Future<void> add(DetailsAddModel model);
}
