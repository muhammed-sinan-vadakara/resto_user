import 'package:resto_user/core/utils/firebase_storage_utils.dart';
import 'package:resto_user/features/home/domain/entity/offer_entity/offer_entity.dart';
import 'package:resto_user/features/home/domain/repository/offer_repository.dart';

final class GetOfferUseCase {
  final OfferRepo repository;

  GetOfferUseCase({required this.repository});

  Stream<List<OfferEntity>> call() async* {
    try {
      final offerStream = repository.getAll();
      await for (final offers in offerStream) {
        yield [
          for (final offer in offers)
            OfferEntity(
                id: offer.id,
                imagePath:
                    await FirebaseStorageUtils.getDownloadUrl(offer.imagePath),
                name: offer.name,
                description: offer.description,
                amount: offer.amount,
                offerType: offer.offerType,
                products: offer.products)
        ];
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
