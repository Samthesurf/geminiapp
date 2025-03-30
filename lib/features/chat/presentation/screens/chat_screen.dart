// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/chat_bloc.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: BlocProvider(
          create: (context) => ChatBloc(),
          child: Column(
            children: [
              // App Bar
              Padding(
                padding: const EdgeInsets.only(
                  left: 13.0,
                  top: 8.0,
                  right: 13.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.messenger_outline_outlined,
                        color: Colors.grey[350],
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    Column(
                      children: [
                        Text(
                          'Gemini',
                          style: TextStyle(
                            color: Colors.grey[350],
                            fontSize: 20,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 110,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' 2.0 Flash',
                                  style: TextStyle(
                                    color: Colors.grey[350],
                                    fontSize: 18,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Colors.grey[350],
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage('assets/face.png'),
                      ),
                    ),
                  ],
                ),
              ),

              //Chat content area
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.purple,
                          Color.fromARGB(255, 181, 94, 101),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds);
                    },
                    child: Text(
                      "Hello, Samuel",
                      style: TextStyle(
                        fontSize: 45, // Added font size for better visibility
                        fontWeight: FontWeight.bold,
                        color:Colors.white, // Important: Set a base color to white
                      ),
                    ),
                  ),
                ),
              ),

              // Chat Input Area
              ChatInputBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatInputBar extends StatefulWidget  {
  @override
  _ChatInputBarState createState() => _ChatInputBarState();

}

class _ChatInputBarState extends State<ChatInputBar> {
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _textController.removeListener(_onTextChanged);
    _textController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    // Dispatch an event to the BLoC whenever text changes
    context.read<ChatBloc>().add(
      ChatTextInputChanged(text: _textController.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
       builder: (context, state) {
        // Build the input bar based on the current state
        return Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8, bottom: 5, right: 8,
            ),
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: Colors.grey[700]!,width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Plus icon (always visible)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      icon: Icon(Icons.add, color: Colors.grey, size: 38),
                      onPressed: () {},
                    ),
                  ),

                  //Text field
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Ask Gemini',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        border: InputBorder.none,
                        
                      ),
                      showCursor: true,
                      onTap: () {
                        // When user taps on text field, dispatch ChatInputStaterted event
                        context.read<ChatBloc>().add(ChatInputStarted());
                      },
                    ),
                    ),

                    if (state is ChatTyping) ...[]
                  
                ]
              )
            ),
          )
        );
       }
    );
  }
}