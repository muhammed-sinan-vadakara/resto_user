import 'package:resto_user/features/home/data/model/offer_model/offer_model.dart';

abstract class OfferFirestoreDatasource {
  Stream<List<OfferModel>> getAll();
}
