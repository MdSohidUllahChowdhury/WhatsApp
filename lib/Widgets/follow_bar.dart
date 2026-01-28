import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/follow_bar_card.dart';

Widget FollowBar() {
  return const Row(
    children: [
      LinkandTitle(
          title: 'Shakil',
          linkadd: 'https://avatars.githubusercontent.com/u/157578225?v=4'),
      SizedBox(
        width: 4,
      ),
      LinkandTitle(
          title: 'Forhad',
          linkadd:
              'https://lumiere-a.akamaihd.net/v1/images/avatar_800x1200_208c9665.jpeg?region=0%2C0%2C800%2C1200'),
      SizedBox(
        width: 4,
      ),
      LinkandTitle(
          title: 'Raihan',
          linkadd:
              'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/e/ee/President_Loki_Official.jpg/revision/latest/scale-to-width-down/1000?cb=20231020213957'),
      SizedBox(
        width: 4,
      ),
      LinkandTitle(
          title: 'Navil',
          linkadd:
              'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/a/a2/Krysten_Ritter.jpg/revision/latest?cb=20250622013934'),
      SizedBox(
        width: 4,
      ),
      LinkandTitle(
          title: 'Masum',
          linkadd:
              'https://static.wikia.nocookie.net/marvelcinematicuniverse/images/d/d2/Civilian_Nick_Fury.png/revision/latest/scale-to-width-down/1000?cb=20190303194834'),
      SizedBox(
        width: 4,
      ),
    ],
  );
}
