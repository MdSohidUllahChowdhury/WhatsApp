import 'package:flutter/material.dart';

class LinkandTitle extends StatelessWidget {
  final String title;
  final String linkadd;
  const LinkandTitle({super.key, required this.title, required this.linkadd});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(131, 158, 158, 158),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 25, backgroundImage: NetworkImage(linkadd)),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 4,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(left: 15, right: 15)),
            onPressed: () {},
            child: const Text('Follow'),
          )
        ],
      ),
    );
  }
}
