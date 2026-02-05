import 'package:flutter/material.dart';

Widget filterSection() {
  chipName(name) {
    return Chip(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      label: Text(name, style: const TextStyle(color: Colors.black45)),
      backgroundColor: Colors.white,
    );
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      chipName('All'),
      const SizedBox(width: 5),
      chipName('Unread'),
      const SizedBox(width: 5),
      chipName('Favorites'),
      const SizedBox(width: 5),
      chipName('Groups'),
      const SizedBox(width: 5),
      chipName('+'),
    ],
  );
}
