// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
            actions: [
              Icon(Icons.camera_alt_outlined,color: Colors.white,),
              SizedBox(width: 10,),

               Icon(Icons.search,color: Colors.white,),
              //SizedBox(width: 8,),
              
              PopupMenuButton(
                
                color: Colors.white,
                shape:BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),

                icon: Icon(Icons.more_vert,color: Colors.white,),
                itemBuilder: (context) =>[              
                PopupMenuItem(
                  value: 1,
                  child: Text('New group')),

                  PopupMenuItem(
                  value: 2,
                  child: Text('New broadcast')),

                  PopupMenuItem(
                  value: 3,
                  child: Text('Linked  devices')),

                  PopupMenuItem(
                  value: 4,
                  child: Text('Starred messages')),
                
                 PopupMenuItem(
                  value: 5,
                  child: Text('Settings')),
                
                
                ]
                
                ),
              
            ],
            backgroundColor: Colors.teal,
            elevation: 0,
            title:const Text("WhatsApp",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
              color: Color.fromARGB(237, 255, 255, 255)
            ),),),



        bottomNavigationBar: NavigationBar(destinations: const 
        [
          NavigationDestination(icon: Icon(Icons.chat_rounded), label: 'Chats'),
          NavigationDestination(icon: Icon(Icons.tips_and_updates_outlined), label: 'Updates'),
          NavigationDestination(icon: Icon(Icons.groups_outlined), label: 'Communities'),
          NavigationDestination(icon: Icon(Icons.call_outlined), label: 'Calls'),
        ])
    );
  }
}