import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newwhatsapp/Models/chat_list.dart';
import 'package:newwhatsapp/Widgets/conversation/chat_conversation.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    final chatList = ChatList.chatList;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 4),
          //! Chat Section
          ListView.builder(
            itemCount: chatList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Get.to(
                      () => ChatConversation(chatList[index].name.toString()));
                },
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.amber,
                  child: Icon(
                    Icons.person,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
                title: Text(chatList[index].name.toString()),
                subtitle: Text(chatList[index].message.toString()),
                trailing: Text(chatList[index].time.toString()),
              );
            },
          ),
          //! Archive Section
          Row(
            children: [
              const SizedBox(
                height: 30,
                width: 20,
              ),
              const Icon(
                Icons.archive_outlined,
                color: Colors.teal,
                size: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {},
                  child: const Text(
                    'Archived',
                    style: TextStyle(fontSize: 15),
                  ))
            ],
          ),

          //! Notify Section
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                width: 20,
              ),
              Icon(
                Icons.lock,
                size: 10,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Your personal messages are end-to-end encrypted',
                style: TextStyle(fontSize: 9),
              )
            ],
          ),
        ],
      ),
    );
  }
}
