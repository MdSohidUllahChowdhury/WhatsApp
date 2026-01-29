import 'package:flutter/material.dart';

Widget filterSection() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Chip(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.teal, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        label: Text('All', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black54,
      ),
      SizedBox(width: 5),
      Chip(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.teal, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        label: Text('Unread', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black54,
      ),
      SizedBox(width: 5),
      Chip(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.teal, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        label: Text('Favorites', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black54,
      ),
      SizedBox(width: 5),
      Chip(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.teal, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        label: Text('Groups', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black54,
      ),
      SizedBox(width: 5),
      Chip(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.teal, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        label: Text('+', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black54,
      ),
    ],
  );
}
