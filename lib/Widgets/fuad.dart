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

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 47,
            color: Colors.teal,
            child: 
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: (){}, 
                  icon:const Icon(Icons.arrow_back_rounded,color: Colors.white)),
                  const CircleAvatar(
                    radius: 18,
                    child: Icon(Icons.person_2),
                  ),
                 const SizedBox(width: 110,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                  onPressed: (){}, 
                  icon:const Icon(Icons.videocam,color: Colors.white,)),
                      IconButton(
                  onPressed: (){}, 
                  icon:const Icon(Icons.call,color: Colors.white)),
                      IconButton(
                  onPressed: (){}, 
                  icon:const Icon(Icons.more_vert_outlined,color: Colors.white)),
                 
                    ],
                  )
              ],
            ),


          )
        ],
      ),

  );
 }
}