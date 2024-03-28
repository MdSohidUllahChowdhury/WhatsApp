// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Fuad extends StatelessWidget {
  const Fuad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.amber,
      appBar: AppBar(
         
         
            actions: [
               Container(
                  child: InkWell(onTap: () {},
                    child: Icon(Icons.videocam,color: Colors.white,)),
               ),

               SizedBox(width: 10,),

                Container(
                  child: InkWell(onTap: () {},
                    child: Icon(Icons.call,color: Colors.white,)),
               ),

              
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
            toolbarHeight: 45,
            backgroundColor: Colors.teal,
            elevation: 0,
            
            leading:
            
            CircleAvatar(
              backgroundImage: AssetImage('Image/Bhai.jpg'),
              radius: 8,
            ),
             
  
            
            title:const Text('Almus Fuad',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
              color: Color.fromARGB(237, 255, 255, 255),
              
            ),
            ),
            ),
   
      body: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(margin: EdgeInsets.fromLTRB(300, 0, 0, 0),
                child: CircleAvatar(
                  child: Icon(Icons.mic,color: Colors.white,),
                  backgroundColor: Colors.teal,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),
             child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                
                labelText: 'Message',
                
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(45)),
                
                
                suffix: InkWell(onTap: () {} ,
                  child: Icon(Icons.attach_file_outlined)),
                
                suffixIcon: Icon(Icons.camera_alt),
                prefixIcon: Icon(Icons.emoji_emotions_outlined),
                
                
              ),
            ),
            
          ),
        
        ],
      ),
   
    );
  }
}