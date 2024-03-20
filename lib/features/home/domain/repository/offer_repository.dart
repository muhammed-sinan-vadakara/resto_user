import 'package:resto_user/features/home/domain/entity/offer_entity/offer_entity.dart';

abstract class OfferRepo {
  Stream<List<OfferEntity>> getAll();
}
