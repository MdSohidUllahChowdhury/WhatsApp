// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';


class Communities extends StatefulWidget {
  const Communities({super.key});

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: Image.asset('Image/Picture01.jpg'),

          ),
        Center(
          child: Text ('Stay connected with a community',
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.w200),),
        ),
        SizedBox(height: 8,),

        Center(
          child: Text("Communitys bring members together in",
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w100),),
        ),

        Center(
          child: Text('topic-based groups, and make it easy to get admin',
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w100),),
        ),

        Center(
          child: Text("announcements.Any community you're added to will",
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w100),),
        ),

        Center(child: Text('apper here.',
        style: TextStyle(fontSize: 12,fontWeight: FontWeight.w100),)),
        
        SizedBox(height: 12,),

        TextButton(
          onPressed: (){}, 
        child:Text('See example communites',
        style:TextStyle(
          fontSize: 12,
          color: Colors.teal
        ) ,)),
        SizedBox(height: 15,),
        ElevatedButton(
          onPressed: (){}, 
          child:Text('Start your community',
          style: TextStyle(fontSize: 12,color:Colors.white),),
           
            style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(Size(280, 45)),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
            
           ),
           )
          
        ],
      )
    );
  }
}