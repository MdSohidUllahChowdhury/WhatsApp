import 'package:flutter/material.dart';

class PublicUtil {
  
  static customChatAppBar() {
    return Container(
      height: 47,
      color: Colors.teal,
      child: Row(
        children: [
          IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_rounded,size:17, color: Colors.white)),
          const CircleAvatar(
            radius:20,
            backgroundImage: AssetImage('Image/Bhai.jpg'),
          ),
          const SizedBox(
            width:4,
          ),
          const Text('Alums Fuad',
          style: TextStyle(fontSize: 14,fontWeight:FontWeight.w600,
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
              suffixIcon: IconButton(
                  onPressed: path,
                  icon: const Icon(Icons.attach_file_outlined)),
              prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.emoji_emotions_outlined)),
              // suffixIcon: Row(mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     IconButton(onPressed: () {}, icon: const Icon(Icons.attach_file)),
              //     IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined)),
              //       ],
              //       ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        CircleAvatar(
          radius: 18,
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
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      height: 35,
      width: 255,
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
    );
  }

  static customMyMessage(String myMessage) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      height: 35,
      width: 255,
      decoration: const BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.all(Radius.circular(14))),
      child: Center(
        child: Text(
          myMessage,
          style: const TextStyle(color: Colors.white, fontSize: 12),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
