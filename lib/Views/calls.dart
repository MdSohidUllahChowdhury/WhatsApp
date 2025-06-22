import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  Widget listcall = const ListTile(
    leading: CircleAvatar(
      backgroundColor: Colors.teal,
      radius: 20,
      child: Icon(
        Icons.person,
        size: 30,
        color: Colors.white,
      ),
    ),
    title: Text('Shakil Chowdhury'),
    subtitle: Text(
      'You missed video call',
      style: TextStyle(fontSize: 12),
    ),
    trailing: Icon((Icons.missed_video_call)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.link,
                  size: 30,
                  color: Colors.white,
                )),
            title: Text('Create call link'),
            subtitle: Text('Share a link for your WhatsApp call'),
          ),
          const SizedBox(height: 10),
          listcall,
          listcall,
          listcall,
          listcall,
          listcall,
          listcall,
        ],
      ),
    );
  }
}
