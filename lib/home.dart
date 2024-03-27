// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
              Icon(Icons.camera_alt,color: Colors.white,),
              SizedBox(width: 10,),
              Icon(Icons.search,color: Colors.white,),
              SizedBox(width: 10,),
              
              PopupMenuButton(
                color: Colors.white,
                shape:BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
               
                ),

                icon: Icon(Icons.more_horiz_rounded,color: Colors.white,),
                itemBuilder: (context) =>[              
                PopupMenuItem(
                  value: 1,
                  child: Text('Group')),

                  PopupMenuItem(
                  value: 2,
                  child: Text('Setting')),

                  PopupMenuItem(
                  value: 3,
                  child: Text('Logout')),
                
                ]
                
                ),
              SizedBox(width: 10,),
            ],
            backgroundColor: Colors.teal,
            elevation: 0,
            title:const Text("WhatsApp",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(237, 255, 255, 255)
            ),),),

    );
  }
}