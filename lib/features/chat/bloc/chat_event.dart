part of 'chat_bloc.dart';

@immutable
abstract class ChatEvent {}

class ChatInputStarted extends ChatEvent {}

class ChatTextInputChanged extends ChatEvent {
  final String text;
  ChatTextInputChanged({required this.text});
}

class ChatMessageSent extends ChatEvent {
  final String message;
  ChatMessageSent({required this.message});
}
