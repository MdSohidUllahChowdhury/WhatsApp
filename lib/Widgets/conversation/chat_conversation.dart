import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newwhatsapp/Widgets/chats/chats_utils.dart';

// ignore: must_be_immutable
class ChatConversation extends StatefulWidget {
  ChatConversation(this.name, {super.key});
  String name;
  @override
  State<ChatConversation> createState() => _ChatConversationState();
}

class _ChatConversationState extends State<ChatConversation> {
  // ignore: unused_field
  File? _image;
  String? imagePath;

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
          PublicUtil.customUserAppBar(widget.name),
          const SizedBox(height: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PublicUtil.customFriendMessage(
                    'Hi!!! Whats Uppp Shakilll? How are You?'),
                PublicUtil.customMyMessage(
                    'Alhamdulilah Brother i am doing okay.\n What about you...How are you do?'),
                PublicUtil.customFriendMessage(
                    'Not Bad at All 👽. Currently I am\n Learning Deep Learning'),
                PublicUtil.customMyMessage(
                    'Wow that is cool. I am also learning\nCan you sent me some notes about CNN Model, I need those for my\n project'),
                PublicUtil.customFriendMessage(
                    'Sure, I will send you some notes'),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height: 65,
        child: PublicUtil.customChatTextFeild(
          () => _pickImageGallery(),
          context,
        ),
      ),
    );
  }
}
