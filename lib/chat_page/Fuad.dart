import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Fuad extends StatefulWidget {
  const Fuad({super.key});

  @override
  State<Fuad> createState() => _FuadState();
}

class _FuadState extends State<Fuad> {
  // ignore: unused_field
  File? _image;
  String? imagePath;

  Future<void> _pickImageCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      if (mounted) {
        super.setState(() {
          _image = File(pickedFile.path);
          imagePath = pickedFile.path;
        });
      }
    }
  }

  Future<void> _pickImageGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
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
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        actions: [
           Container(
            height: 54,
            
            decoration:const BoxDecoration(
              color: Colors.teal
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                children: [
                     IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 15,
                  )),
                    const SizedBox(width: 8,),
                const CircleAvatar(
                radius: 15,
                child: Icon(Icons.person),
              ),
              const SizedBox(width: 10,),
              const Text(
            'Almus Fuad',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w200,
              color: Color.fromARGB(237, 255, 255, 255),
            ),
          ),
                ],
              ),
              Row(
                children: [
                  IconButton(
              icon: const Icon(
                Icons.videocam,
                color: Colors.white,
              ),
              onPressed: _pickImageCamera,
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              icon: const Icon(Icons.call, color: Colors.white),
              onPressed: _pickImageGallery,
            ),
            PopupMenuButton(
              color: Colors.white,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                const PopupMenuItem(value: 1, child: Text('New group')),
                const PopupMenuItem(value: 2, child: Text('New broadcast')),
                const PopupMenuItem(value: 3, child: Text('Linked  devices')),
                const PopupMenuItem(value: 4, child: Text('Starred messages')),
                const PopupMenuItem(value: 5, child: Text('Settings')),
              ],
            )
                ],
              )
              ],
            ),
          ),
        ],
      ),
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         
          const Row(
            mainAxisAlignment: MainAxisAlignment.end, 
          children: [
            CircleAvatar(
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.mic,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 6,
            )
          ]
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
            decoration: InputDecoration(
               labelText: 'Message',
               border: OutlineInputBorder(
                 borderSide: const BorderSide(width:3),
                 borderRadius: BorderRadius.circular(40),
               ),
               suffixIcon: IconButton(
                   onPressed: () {
                     _pickImageCamera();
                   },
                   icon: const Icon(Icons.camera_alt)),
               prefixIcon: IconButton(
                   onPressed: () {
                     _pickImageCamera();
                   },
                   icon: const Icon(Icons.emoji_emotions_outlined)),
               suffix: IconButton(
                   onPressed: () {
                     _pickImageCamera();
                   },
                   icon: const Icon(Icons.attachment_rounded)),
               prefix: IconButton(
                   onPressed: () {}, icon: const Icon(Icons.send))),
                        ),
          ),
        ],
      ),
    );
  }
}
