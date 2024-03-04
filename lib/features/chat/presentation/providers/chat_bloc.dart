import 'dart:async';

class MessageBloc {
  final _messageController = StreamController<String>();

  Stream<String> get messageStream => _messageController.stream;

  void sendMessage(String message) {
    _messageController.sink.add(message);
  }

  void dispose() {
    _messageController.close();
  }
}
