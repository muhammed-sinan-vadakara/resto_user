// ignore_for_file: use_rethrow_when_possible
import 'package:resto_user/core/exceptions/base_exception/base_exception.dart';
import 'package:resto_user/features/chat/domain/entites/message_entity.dart';
import 'package:resto_user/features/chat/domain/repository/message_repository.dart';

class GetMessagesUseCase {
  final MessageRepository repository;

  GetMessagesUseCase({required this.repository});

  Stream<List<MessageEntity>> call(List<String> userIds) {
    try {
      final messageStream = repository.getMessages(userIds);
      return messageStream;
    } catch (e) {
      throw BaseException('Error while loading chat. Try Again');
    }
  }
}
