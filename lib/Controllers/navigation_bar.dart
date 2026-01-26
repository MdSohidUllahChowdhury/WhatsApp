import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newwhatsapp/Views/calls.dart';
import 'package:newwhatsapp/Views/chats.dart';
import 'package:newwhatsapp/Views/communities.dart';
import 'package:newwhatsapp/Views/updates.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class NavigationBarOwn extends StatefulWidget {
  const NavigationBarOwn({super.key});

  @override
  State<NavigationBarOwn> createState() => _NavigationBarOwnState();
}

class _NavigationBarOwnState extends State<NavigationBarOwn> {
  //? Where to index start
  int _onpageindex = 0;

  //! Pages List
  final List _pagedata = [
    const Chats(),
    const Updates(),
    const Communities(),
    const Calls()
  ];

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
        backgroundColor: Colors.teal,
        elevation: 0,
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(237, 255, 255, 255)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                _pickImageCamera();
              },
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              )),
          const SizedBox(width: 10),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          PopupMenuButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              color: Colors.white,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              position: PopupMenuPosition.under,
              itemBuilder: (context) => [
                    const PopupMenuItem(value: 1, child: Text('New group')),
                    const PopupMenuItem(value: 2, child: Text('New broadcast')),
                    const PopupMenuItem(
                        value: 3, child: Text('Linked  devices')),
                    const PopupMenuItem(
                        value: 4, child: Text('Starred messages')),
                    const PopupMenuItem(value: 5, child: Text('Settings')),
                  ]),
        ],
      ),
      body: _pagedata[_onpageindex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          _pickImageGallery();
        },
        child: const Icon(
          FontAwesomeIcons.folderPlus,
          color: Colors.white,
          size: 25,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.tips_and_updates_outlined), label: 'Updates'),
            BottomNavigationBarItem(
                icon: Icon(Icons.groups_outlined), label: 'Communities'),
            BottomNavigationBarItem(
                icon: Icon(Icons.call_outlined), label: 'Calls')
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[800],
          enableFeedback: true,
          showUnselectedLabels: true,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          elevation: 0,
          currentIndex: _onpageindex,
          onTap: (gotopage) {
            setState(() {
              _onpageindex = gotopage;
            });
          }),
    );
  }
}
