import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newwhatsapp/Widgets/conversation/sohid.dart';

class ChatList {
  String name;
  String message;
  String time;
  Function? onTap;

  ChatList({
    required this.name,
    required this.message,
    required this.time,
    
  });

  static List<ChatList> chatList = [
    ChatList(
      name: 'Sohid Ullah',
      message: 'Hi!!! Whats Uppp Shakilll? How are You?',
      time: '11:27 PM',
    ),
    ChatList(
      name: 'Shakil Chowdhury',
      message: 'Alhamdulillah',
      time: '6:33 PM',
    ),
    ChatList(
        name: 'Masumur Rahman', message: 'Basay aso Broh', time: '6:03 PM'),
    ChatList(name: 'Forhadul Islam', message: 'I am fine', time: '5:45 PM'),
    ChatList(
        name: 'Navil Kazi',
        message: 'New York or anywere you want!',
        time: '2:18 AM'),
    ChatList(
        name: 'Lionel Messi',
        message: 'I am the best player in the world',
        time: '1:00 AM'),
  ];
}
