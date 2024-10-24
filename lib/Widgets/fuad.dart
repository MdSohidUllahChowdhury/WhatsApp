import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newwhatsapp/Controllers/widget_controller.dart';

class Fuad extends StatefulWidget {
  const Fuad({super.key});

  @override
  State<Fuad> createState() => _FuadState();
}

class _FuadState extends State<Fuad> {
  // ignore: unused_field
   File? _image;
   String? imagePath;

  // Future<void> _pickImageCamera() async {
  //   final pickedFile =
  //       await ImagePicker().pickImage(source: ImageSource.camera);

  //   if (pickedFile != null) {
  //     if (mounted) {
  //       super.setState(() {
  //         _image = File(pickedFile.path);
  //         imagePath = pickedFile.path;
  //       });
  //     }
  //   }
  // }

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
          PublicUtil.customChatAppBar(),
          const SizedBox(height: 8),
           Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               PublicUtil.customFriendMessage('Hi!!! Whats Uppp Shakilll? How are You?'),
               PublicUtil.customMyMessage('Alhamdulilah Brother i am doing okay.\nWhat about you...How works going?'),
               PublicUtil.customFriendMessage('Not Bad at All 👽. Currently I am\n Lrearnin Deep Learning'),
               PublicUtil.customMyMessage('Wow that is so cool. I am also learning\nHow Much You Learn CNN Model')
              ],
            ),
          )
        ],
      ),
      
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height:65,
        child: PublicUtil.customChatFeild(() =>_pickImageGallery(),),
      ),
    );
  }
}
