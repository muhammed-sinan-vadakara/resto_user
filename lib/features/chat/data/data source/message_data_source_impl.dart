import 'package:resto_user/features/chat/data/data%20source/message_data_source.dart';
import 'package:resto_user/features/chat/data/models/message_model.dart';

class MessageDataSourceImpl implements MessageDataSource {
  // In-memory storage for messages (replace with your actual data source)
  final List<MessageModel> _messages = [];

  @override
  Future<List<MessageModel>> getMessages(String filterValue) async {
    // Replace "senderId" with the appropriate property to filter
    return _messages
        .where((message) => message.senderId == filterValue)
        .toList();
  }

  @override
  Future<void> sendMessage(MessageModel message) async {
    _messages.add(message);
  }
}
