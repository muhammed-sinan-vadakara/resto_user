import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:resto_user/features/chat/data/data%20source/message_data_source.dart';
import 'package:resto_user/features/chat/data/models/message_model.dart';

class MessageDataSourceImpl implements MessageDataSource {
  final collection = FirebaseFirestore.instance
      .collection('chat')
      .withConverter(
          fromFirestore: MessageModel.fromFirestore,
          toFirestore: (model, _) => model.toFirestore());

  @override
  Future<void> sendMessage(MessageModel message) async {
    final docId = collection.doc(message.receiverId);
    await docId.set(message);
  }

  @override
  Stream<List<MessageModel>> getMessages(List<String> userIds) async* {
    final messages = collection
        .where(Filter.and(
            Filter.or(Filter('receiverId', isEqualTo: userIds.first),
                Filter('receiverId', isEqualTo: userIds.last)),
            Filter.or(Filter('senderId', isEqualTo: userIds.first),
                Filter('senderId', isEqualTo: userIds.last))))
        .snapshots();

    await for (var snapshot in messages) {
      yield snapshot.docs.map((doc) => doc.data()).toList();
    }
  }
}
