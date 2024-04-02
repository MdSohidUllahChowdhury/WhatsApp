// ignore_for_file: unused_field

import 'dart:io';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

class Fuad extends StatefulWidget {
  const Fuad({super.key});

  @override
  State<Fuad> createState() => _FuadState();
}

class _FuadState extends State<Fuad> {
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
            toolbarHeight: 45,
            backgroundColor: Colors.teal,
            elevation: 0, 
         leading:
            
            CircleAvatar(
              backgroundImage: AssetImage('Image/Bhai.jpg'),
              radius: BorderSide.strokeAlignCenter,
            ),

            title:const Text('Almus Fuad',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
              color: Color.fromARGB(237, 255, 255, 255),
              
            ),
            ),
            
        actions: [
          IconButton(
            icon: Icon(Icons.videocam,color: Colors.white,),
            onPressed: _pickImageCamera,
          ),
          SizedBox(width: 10,),
          IconButton(
            icon: Icon(Icons.call,color:Colors.white),
            onPressed: _pickImageGallery,
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
    
        ],
        )
        ]
        ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end,
           children: [ Container(
                child: CircleAvatar(
                  child: Icon(Icons.mic, color: Colors.white,),
                  backgroundColor: Colors.teal,
                ),
              )
              ]
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Message',
                
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    
                    IconButton(onPressed: (){
                      _pickImageGallery();
                    },
                     icon: Icon(Icons.attach_file_outlined)),
                          
                    SizedBox(width: 4,),
                          
                    IconButton(onPressed: (){
                      _pickImageCamera();
                    }, icon: Icon(Icons.camera_alt))
                  ],
                ),
                prefixIcon: Icon(Icons.emoji_emotions_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}