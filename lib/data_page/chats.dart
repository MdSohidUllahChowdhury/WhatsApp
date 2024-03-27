// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Container(
            height: 35,
            width: double.infinity,
            color: Colors.amber,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.archive_outlined),
                SizedBox(width: 10,),
                 InkWell(onTap: () {
                   print('Archived Page');
                 },
                  child: Text('Archived'))
                ],
              
            )
          ),
        
        
            SizedBox(height: 6,),
             Container(
            height: 35,
            width: double.infinity,
            color: Colors.amber,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20,),
                Icon(Icons.lock,size: 10,),
                SizedBox(width: 10,),
                 Text('Your personal messages are end-to-end encrypted',style: 
                 TextStyle(fontSize: 9),)
                ],
              
            )
          ),
        ],
      ),
    );
  }
}