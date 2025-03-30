import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'chat_event.dart';

part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatInitial()) {
    on<ChatInputStarted>((event, emit) {
      emit(ChatTyping(text: ''));
    });
    on<ChatTextInputChanged>((event, emit) {
      emit(ChatTyping(text: event.text));
    });
    on<ChatMessageSent>((event, emit) {
      emit(ChatMessageSentState(message: event.message));
    });
  }
}
