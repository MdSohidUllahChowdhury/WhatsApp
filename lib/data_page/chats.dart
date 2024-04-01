// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_print
import 'package:flutter/material.dart';
import 'package:newwhatsapp/chat_page/fuad.dart';
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
            //color: Colors.amber,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.archive_outlined,color: Colors.teal,size: 20,),
                SizedBox(width: 20,),
                 InkWell(onTap: () {
                   print('Archived Page');
                 },
                  child: Text('Archived',style: TextStyle(fontSize: 15),))
                ],
              
            )
          ),
        SizedBox(height: 4,),
      
        ListTile(
          onTap: (){},
          leading: CircleAvatar(
            radius: 25,
           backgroundImage: AssetImage('Image/FB.jpg'),
            ),
          title: Text('Shakil'),
          subtitle: Text('Bhai flutter pera lagche'),
          trailing: Text('6:33 PM') ,
         ),

         ListTile(
          onTap: (){},
          leading: CircleAvatar(
            radius: 25,
           backgroundImage: AssetImage('Image/Picture01.jpg'),
            ),
          title: Text('Navil Kazi'),
          subtitle: Text('Shakil phone dhoro na kno?'),
          trailing: Text('3:54 PM') ,
         ),

        ListTile(
          onTap: (){
            Navigator.push(
              context,MaterialPageRoute(builder: (context) => Fuad(),) );
          },
          leading: CircleAvatar(
            radius: 25,
           backgroundImage: AssetImage('Image/Bhai.jpg'),
            ),
          title: Text('Almus Fuad'),
          subtitle: Text('Tr kaz kmn chole?'),
          trailing: Text('11:27 PM') ,
         ),

       SizedBox(height: 6,),
       Container(
            height: 35,
            width: double.infinity,
            //color: Colors.amber,
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