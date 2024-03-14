import 'package:resto_user/features/home/data/data_source/offer_firestore_datasource.dart';
import 'package:resto_user/features/home/domain/entity/offer_entity/offer_entity.dart';
import 'package:resto_user/features/home/domain/repository/offer_repository.dart';

class OfferRepoImpl implements OfferRepo {
  final OfferFirestoreDatasource datasource;
  OfferRepoImpl({required this.datasource});

  @override
  Stream<List<OfferEntity>> getAll() async* {
    final data = datasource.getAll();
    await for (final snapshot in data) {
      final docs = snapshot;
      yield [
        for (final offer in docs)
          OfferEntity(
              imagePath: offer.imagePath ?? '',
              name: offer.name ?? '',
              description: offer.description ?? '',
              amount: offer.amount ?? 0,
              offerType: offer.offerType,
              products: offer.products,
              id: offer.id ?? '')
      ];
    }
  }
}
