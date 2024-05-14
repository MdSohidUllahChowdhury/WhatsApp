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
         
         leading:const CircleAvatar(
                  backgroundImage: AssetImage('Image/Bhai.jpg'),
                ),
 
         title: const Text('Almus Fuad',
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
              color: Color.fromARGB(237, 255, 255, 255),  
            ),
            ),
            
        actions: [
          IconButton(
            icon: const Icon(Icons.videocam,color: Colors.white,),
            onPressed: _pickImageCamera,
          ),
          const SizedBox(width: 10,),
          IconButton(
            icon: const Icon(Icons.call,color:Colors.white),
            onPressed: _pickImageGallery,
          ),

          PopupMenuButton(
                
                color: Colors.white,
                shape:BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),

                icon: const Icon(Icons.more_vert,color: Colors.white,),
                
                itemBuilder: (context) =>[              
                const PopupMenuItem(
                  value: 1,
                  child: Text('New group')),

                  const PopupMenuItem(
                  value: 2,
                  child: Text('New broadcast')),

                  const PopupMenuItem(
                  value: 3,
                  child: Text('Linked  devices')),

                  const PopupMenuItem(
                  value: 4,
                  child: Text('Starred messages')),
                
                 const PopupMenuItem(
                  value: 5,
                  child: Text('Settings')),
    
        ],
        )
        ]
        ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
           children: [ 
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  child:Icon(Icons.mic,color: Colors.white,),
                ),
              
              SizedBox(width: 6,)
              ]
          ),

        

                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                       child: TextFormField(
                       decoration: InputDecoration(
                                           
                        labelText: 'Message',
                        border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 5),
                        borderRadius: BorderRadius.circular(40),
                                           ),
                                           
                        suffixIcon: 
                                  IconButton(onPressed: (){
                                 _pickImageCamera();
                                  },
                           icon: const Icon(Icons.camera_alt)
                           ),
                         
                       prefixIcon: 
                        IconButton(onPressed: (){
                            _pickImageCamera();
                          },
                           icon: const Icon(Icons.emoji_emotions_outlined)
                           ), 
                       
                       suffix:  IconButton(onPressed: (){
                            _pickImageCamera();
                          },
                           icon: const Icon(Icons.attachment_rounded)
                           ), 
                           
                           
                           prefix: IconButton(onPressed: (){}, icon: const Icon(Icons.send))
                          
                     ),
                     ),
                     ),  
                    
        ],
      ),
    );
  }
}