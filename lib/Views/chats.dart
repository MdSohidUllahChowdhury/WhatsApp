import 'package:flutter/material.dart';
import 'package:newwhatsapp/Widgets/fuad.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: 35,
              width: double.infinity,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.archive_outlined,
                    color: Colors.teal,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        'Archived',
                        style: TextStyle(fontSize: 15),
                      ))
                ],
              )),
          const SizedBox(
            height: 4,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Fuad(),
                  ));
            },
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('Image/Bhai.jpg'),
            ),
            title: const Text('Almus Fuad'),
            subtitle: const Text('Tr kaz kmn chole?'),
            trailing: const Text('11:27 PM'),
          ),
          ListTile(
            onTap: () {},
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('Image/FB.jpg'),
            ),
            title: const Text('Shakil Chowdhury'),
            subtitle: const Text('Alhamdulillah'),
            trailing: const Text('6:33 PM'),
          ),
          ListTile(
            onTap: () {},
            leading: const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.person,
                size: 35,
              ),
            ),
            title: const Text('Masumur Rahman'),
            subtitle: const Text('Basay aso Broh'),
            trailing: const Text('6:03 PM'),
          ),
          ListTile(
            onTap: () {},
            leading: const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.amber,
              child: Icon(
                Icons.person,
                size: 35,
              ),
            ),
            title: const Text('Navil Kazi'),
            subtitle: const Text('New York or any were you want!'),
            trailing: const Text('2:18 AM'),
          ),
          const SizedBox(height: 6),
          const SizedBox(
              height: 35,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.lock,
                    size: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Your personal messages are end-to-end encrypted',
                    style: TextStyle(fontSize: 9),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
