import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Models/chat_list.dart';
import 'package:whatsapp/Widgets/conversation/chat_conversation.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    final chatList = ChatList.chatList;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 8),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.93,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
                filled: true,
                fillColor: Colors.black54,
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                hintText: 'Search or start new chat',
                hintStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          const SizedBox(height: 6),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Chip(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.teal, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                label: Text('All', style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.black54,
              ),
              SizedBox(width: 5),
              Chip(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.teal, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                label: Text('Unread', style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.black54,
              ),
              SizedBox(width: 5),
              Chip(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.teal, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                label: Text('Favorites', style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.black54,
              ),
              SizedBox(width: 5),
              Chip(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.teal, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                label: Text('Groups', style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.black54,
              ),
              SizedBox(width: 5),
              Chip(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.teal, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                label: Text('+', style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.black54,
              ),
            ],
          ),
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
