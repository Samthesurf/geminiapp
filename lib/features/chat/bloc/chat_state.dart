part of 'chat_bloc.dart';

@immutable
abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatTyping extends ChatState {
  final String text;
  ChatTyping({required this.text});
}

class ChatMessageSentState extends ChatState {
  final String message;
  ChatMessageSentState({required this.message});
}
