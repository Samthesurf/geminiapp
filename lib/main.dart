import 'package:flutter/material.dart';
import 'package:geminiapp/features/chat/presentation/screens/chat_screen.dart';

void main() => runApp(GemApp());

class GemApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
      // home: Scaffold(
      //   backgroundColor: Colors.grey[900],
      //   body: SafeArea(
      //     // child: Column(
      //     //   children: [
      //     //     Padding(
      //     //       padding: const EdgeInsets.only(
      //     //         left: 13.0,
      //     //         top: 8.0,
      //     //         right: 13.0,
      //     //       ),
      //     //       child: Row(
      //     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     //         children: [
      //     //           IconButton(
      //     //             icon: Icon(
      //     //               Icons.messenger_outline_outlined,
      //     //               color: Colors.grey[350],
      //     //               size: 30,
      //     //             ),
      //     //             onPressed: () {},
      //     //           ),
      //     //           Column(
      //     //             children: [
      //     //               Text(
      //     //                 'Gemini',
      //     //                 style: TextStyle(
      //     //                   color: Colors.grey[350],
      //     //                   fontSize: 20,
      //     //                 ),
      //     //               ),
      //     //               GestureDetector(
      //     //                 onTap: () {},
      //     //                 child: Container(
      //     //                   width: 110,
      //     //                   height: 30,
      //     //                   // padding: EdgeInsets.all(15),
      //     //                   decoration: BoxDecoration(
      //     //                     color: Colors.grey[800],
      //     //                     borderRadius: BorderRadius.circular(15),
      //     //                   ),
      //     //                   child: Row(
      //     //                     mainAxisSize: MainAxisSize.min,
      //     //                     mainAxisAlignment: MainAxisAlignment.center,
      //     //                     children: [
      //     //                       Text(
      //     //                         ' 2.0 Flash',
      //     //                         style: TextStyle(
      //     //                           color: Colors.grey[350],
      //     //                           fontSize: 18,
      //     //                           // fontWeight: FontWeight.bold,
      //     //                         ),
      //     //                       ),
      //     //                       Icon(
      //     //                         Icons.arrow_drop_down_sharp,
      //     //                         color: Colors.grey[350],
      //     //                         size: 20,
      //     //                       ),
      //     //                     ],
      //     //                   ),
      //     //                 ),
      //     //               ),
      //     //             ],
      //     //           ),
      //     //           Padding(
      //     //             padding: const EdgeInsets.only(top: 8.0),
      //     //             child: CircleAvatar(
      //     //               radius: 22,
      //     //               backgroundImage: AssetImage('assets/face.png'),
      //     //             ),
      //     //           ),
      //     //         ],
      //     //       ),
      //     //     ),
      //     //     Expanded(
      //     //       child: Align(
      //     //         alignment: Alignment.center,
      //     //         child: ShaderMask(
      //     //           shaderCallback: (Rect bounds) {
      //     //             return LinearGradient(
      //     //               colors: [
      //     //                 Colors.blue,
      //     //                 Colors.purple,
      //     //                 Color.fromARGB(255, 181, 94, 101),
      //     //               ],
      //     //               begin: Alignment.topLeft,
      //     //               end: Alignment.bottomRight,
      //     //             ).createShader(bounds);
      //     //           },
      //     //           child: Text(
      //     //             "Hello, Samuel",
      //     //             style: TextStyle(
      //     //               fontSize: 45, // Added font size for better visibility
      //     //               fontWeight:
      //     //                   FontWeight.bold, 
      //     //               color:
      //     //                   Colors.white, // Important: Set a base color to white
      //     //             ),
      //     //           ),
      //     //         ),
      //     //       ),
      //     //     ),
      //     //     Align(
      //     //       alignment: Alignment.bottomCenter,
      //     //       child: Padding(
      //     //         padding: EdgeInsets.only(bottom: 5, left: 8, right: 8),
      //     //         child: Container(
      //     //           width: double.infinity,
      //     //           height: 70,
      //     //           decoration: BoxDecoration(
      //     //             // color: Colors.grey[800],
      //     //             borderRadius: BorderRadius.circular(35),
      //     //             border: Border.all(color: Colors.grey[700]!, width: 1),
      //     //           ),
      //     //           child: Row(
      //     //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     //             children: [
      //     //               Padding(
      //     //                 padding: const EdgeInsets.only(left: 8.0),
      //     //                 child: IconButton(
      //     //                   icon: Icon(Icons.add, color: Colors.grey, size: 38),
      //     //                   onPressed: () {},
      //     //                 ),
      //     //               ),
      //     //               Expanded(
      //     //                 child: TextField(
      //     //                   style: TextStyle(
      //     //                     color: Colors.grey,
      //     //                     fontSize: 20,
      //     //                   ),
      //     //                   decoration: InputDecoration(
      //     //                     hintText: 'Ask Gemini',
      //     //                     hintStyle: TextStyle(
      //     //                       color: Colors.grey,
      //     //                       fontSize: 20,
      //     //                     ),
      //     //                     border: InputBorder.none,
      //     //                   ),
      //     //                   showCursor: true,
      //     //                 ),
      //     //               ),
      //     //               IconButton(
      //     //                 onPressed: () {},
      //     //                 icon: Icon(Icons.mic, color: Colors.grey, size: 30),
      //     //               ),
      //     //               Padding(
      //     //                 padding: const EdgeInsets.only(right: 10.0),
      //     //                 child: CircleAvatar(
      //     //                   radius: 20,
      //     //                   backgroundColor: const Color.fromARGB(74, 97, 97, 97),
      //     //                   child: IconButton(
      //     //                     onPressed: () {},
      //     //                     icon: Icon(
      //     //                       Icons.graphic_eq,
      //     //                       color: Colors.grey,
      //     //                       size: 25,
      //     //                     ),
      //     //                   ),
      //     //                 ),
      //     //               ),
      //     //             ],
      //     //           ),
      //     //         ),
      //     //       ),
      //     //     ),
      //     //   ],
      //     // ),
      //   ),
      // ),
    );
  }
}
