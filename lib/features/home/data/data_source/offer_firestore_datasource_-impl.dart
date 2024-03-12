import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto_user/features/home/data/data_source/offer_firestore_datasource.dart';
import 'package:resto_user/features/home/data/model/offer_model/offer_model.dart';

class OfferFirestoreDatasoureceImpl implements OfferFirestoreDatasourece {
  @override
  Stream<List<OfferModel>> getAll() async* {
    final collection = FirebaseFirestore.instance
        .collection("offers")
        .withConverter(
            fromFirestore: OfferModel.fromFirestore,
            toFirestore: (model, _) => model.toFirestore());
    final offerStream = collection.snapshots(includeMetadataChanges: true);
    await for (final offers in offerStream) {
      yield [for (final offer in offers.docs) offer.data()];
    }
  }
}
