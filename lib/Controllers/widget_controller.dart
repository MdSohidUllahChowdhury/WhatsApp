import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class PublicUtil {
  
  static customChatAppBar() {
    return Container(
      padding: const EdgeInsets.only(top: 48),
      height: 130,
      color: Colors.teal,
      child: Row(
      
        children: [
          IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_rounded,size:20, color: Colors.white)),
          const CircleAvatar(
            radius:25,
            backgroundImage: AssetImage('asset/Bhai.jpg'),
          ),
          const SizedBox(
            width:10,
          ),
          const Text('Alums Fuad',
          style: TextStyle(fontSize: 17,fontWeight:FontWeight.w600,
          color: Colors.white),),
          const SizedBox(
            width:28,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.videocam_outlined,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.call_outlined, color: Colors.white)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert_outlined,
                        color: Colors.white)),
              ],
            ),
          )
        ],
      ),
    );
  }

  static customChatFeild(void Function()? path) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              hintText: 'Message',
              suffixIcon: SizedBox(
                width: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(
                          onPressed: path,
                          icon: const Icon(Icons.attach_file_outlined)),
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.send)),    
                  ],
                ),
              ),
              prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.emoji_emotions_outlined)),
            ),
          ),
        ),
        const SizedBox(width: 8),
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.teal,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: Colors.white,
              )),
        )
      ],
    );
  }

  static customFriendMessage(String friendMessage) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 6,left: 8),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        height: 55,
        width: 330,
        decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: const BorderRadius.all(Radius.circular(14))),
        child: Center(
          child: Text(
            friendMessage,
            style: const TextStyle(color: Colors.white, fontSize: 12),
            textAlign: TextAlign.right,
          ),
        ),
      ),
    );
  }

  static customMyMessage(String myMessage) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 6,right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        height: 55,
        width: 330,
        decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.all(Radius.circular(14))),
        child: Center(
          child: Text(
            myMessage,
            style: const TextStyle(color: Colors.white, fontSize: 12),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
