// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_final_fields, avoid_unnecessary_containers, unused_field

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newwhatsapp/data_page/calls.dart';
import 'package:newwhatsapp/data_page/chats.dart';
import 'package:newwhatsapp/data_page/communities.dart';
import 'package:newwhatsapp/data_page/updates.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _onpageindex = 0; //? Where to index start
  
  var _pagedata =[ Chats(),Updates(),Communities(),Calls() ];

  

  File? _image;
  String? imagePath;

  Future<void> _pickImageCamera() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile!= null) {
      if (mounted) {
        super.setState(() {
          _image = File(pickedFile.path);
          imagePath = pickedFile.path;
        });
      }
    }
  }

  Future<void> _pickImageGallery() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile!= null) {
      if (mounted) {
        super.setState(() {
          _image = File(pickedFile.path);
          imagePath = pickedFile.path;
        });
      }
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
            actions: [
               Container(
                  child: InkWell(onTap: () {
                    _pickImageCamera();
                  },
                    child: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,)
                    ),
               ),

               SizedBox(width: 10,),

                Container(
                  child: InkWell(onTap: () {
                    TextFormField(
                      
                    );
                    },
                    child: Icon(Icons.search,
                    color: Colors.white,)
                    ),
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
           
            title:const Text("WhatsApp",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
              color: Color.fromARGB(237, 255, 255, 255)
            ),
            ),

            toolbarHeight: 45,
            backgroundColor: Colors.teal,
            elevation: 0,
            ),

       body: _pagedata[_onpageindex],

       floatingActionButton: FloatingActionButton(
        onPressed: () {
          _pickImageGallery();
        },
        
        child: Icon(FontAwesomeIcons.folderPlus,
        color: Colors.white,
        size: 25,
        ),
        backgroundColor: Colors.teal,
        
        
        ),
        
       bottomNavigationBar: BottomNavigationBar(
          items:<BottomNavigationBarItem>
         [
          BottomNavigationBarItem(icon: Icon(Icons.chat_rounded), label: 'Chats',),
          BottomNavigationBarItem(icon: Icon(Icons.tips_and_updates_outlined), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.groups_outlined), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.call_outlined), label: 'Calls')
         ],

         selectedItemColor: Colors.black,
         unselectedItemColor: Colors.grey[800],
         enableFeedback: true,
         showUnselectedLabels: true,
         selectedFontSize: 10,
         unselectedFontSize: 10,
         elevation: 0,

         currentIndex: _onpageindex,
         onTap: (gotopage){
          setState(() {
            _onpageindex = gotopage;
          });
         }

         ),
         
    );
  }
}