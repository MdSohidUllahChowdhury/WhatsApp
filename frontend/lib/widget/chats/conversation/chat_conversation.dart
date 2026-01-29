import 'package:flutter/material.dart';
import 'package:whatsapp/widget/chats/conversation/chats_utils.dart';

// ignore: must_be_immutable
class ChatConversation extends StatefulWidget {
  ChatConversation(this.name, {super.key});
  String name;
  @override
  State<ChatConversation> createState() => _ChatConversationState();
}

class _ChatConversationState extends State<ChatConversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          WidgetMessage.customUserAppBar(widget.name),
          const SizedBox(height: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                WidgetMessage.customFriendMessage(
                    'Hi!!! Whats Uppp Shakilll? How are You?'),
                WidgetMessage.customMyMessage(
                    'Alhamdulilah Brother i am doing okay.\n What about you...How are you do?'),
                WidgetMessage.customFriendMessage(
                    'Not Bad at All 👽. Currently I am\n Learning Deep Learning'),
                WidgetMessage.customMyMessage(
                    'Wow that is cool. I am also learning\nCan you sent me some notes about CNN Model, I need those for my\n project'),
                WidgetMessage.customFriendMessage(
                    'Sure, I will send you some notes'),
                WidgetMessage.customMyMessage(
                    'Can you sent me notes in 1 to 2 hours?')
              ],
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
