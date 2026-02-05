// ignore_for_file: avoid_print
// ignore: library_prefixes
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter/material.dart';
import 'package:ping/widget/chats/conversation/chats_utils.dart';

// ignore: must_be_immutable
class ChatConversation extends StatefulWidget {
  ChatConversation(this.name, {super.key});
  String name;

  @override
  State<ChatConversation> createState() => _ChatConversationState();
}

class _ChatConversationState extends State<ChatConversation> {
  IO.Socket? socket;

  @override
  void initState() {
    super.initState();
    socketConnect();
  }

  void socketConnect() {
    socket = IO.io("http://192.168.0.212:5000", <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket!.connect();
    socket!.emit('event', 'HI Socket');
    socket!.onConnect((val) {
      print(val);
    });
    print("Socket Status: => ${socket!.connected}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          WidgetMessage.customUserAppBar(widget.name),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    WidgetMessage.customMyMessage(
                        'Wow that is cool. I am also learning\nCan you sent me some notes about CNN Model, I need those for my\n project'),
                    WidgetMessage.customFriendMessage(
                        'Sure, I will send you some notes'),
                    WidgetMessage.customMyMessage(
                        'Can you sent me notes in 1 to 2 hours?'),
                    WidgetMessage.customFriendMessage("New Way to implement"),
                    WidgetMessage.customFriendMessage(
                        "But no problem I can make it for web socket io"),
                    WidgetMessage.customMyMessage("I can able to make it")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        height: 80,
        child: WidgetMessage.customChatTextFeild(context),
      ),
    );
  }
}
