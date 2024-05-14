import 'package:flutter/material.dart';
import 'package:newwhatsapp/chat_page/fuad.dart';

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
        SizedBox(
            height: 35,
            width: double.infinity,
            //color: Colors.amber,
            child: Row(
              children: [
                const SizedBox(width: 20,),
                const Icon(Icons.archive_outlined,color: Colors.teal,size: 20,),
                const SizedBox(width: 20,),
                 InkWell(onTap: () {},
                  child: const Text('Archived',style: TextStyle(fontSize: 15),))
                ],
              
            )
          ),
        const SizedBox(height: 4,),
      
        ListTile(
          onTap: (){},
          leading: const CircleAvatar(
            radius: 25,
           backgroundImage: AssetImage('Image/FB.jpg'),
            ),
          title: const Text('Shakil'),
          subtitle: const Text('Bhai flutter pera lagche'),
          trailing: const Text('6:33 PM') ,
         ),

         ListTile(
          onTap: (){},
          leading: const CircleAvatar(
            radius: 25,
           backgroundImage: AssetImage('Image/Picture01.jpg'),
            ),
          title: const Text('Navil Kazi'),
          subtitle: const Text('Shakil phone dhoro na kno?'),
          trailing: const Text('3:54 PM') ,
         ),

        ListTile(
          onTap: (){
            Navigator.push(
              context,MaterialPageRoute(builder: (context) => const Fuad(),) );
          },
          leading: const CircleAvatar(
            radius: 25,
           backgroundImage: AssetImage('Image/Bhai.jpg'),
            ),
          title: const Text('Almus Fuad'),
          subtitle: const Text('Tr kaz kmn chole?'),
          trailing: const Text('11:27 PM') ,
         ),

       const SizedBox(height: 6,),
       const SizedBox(
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