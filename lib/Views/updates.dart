import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newwhatsapp/Widgets/follow_bar.dart';

class Updates extends StatefulWidget {
  const Updates({
    super.key,
  });

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            title: Text('Status'),
            trailing: Icon((FontAwesomeIcons.ellipsisVertical)),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.teal,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                  )),
            ),
            title: const Text('My status'),
            subtitle: const Text(
              'tap to add stutus update',
              style: TextStyle(fontSize: 12),
            ),
          ),
          const ListTile(
            title: Text('Channels'),
            trailing: Icon(
              (FontAwesomeIcons.plus),
            ),
          ),
          const ListTile(
            title: Text('Find Channels'),
            trailing: Icon(
              (FontAwesomeIcons.magnifyingGlassArrowRight),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                LinkandTitle(
                    title: 'Shakil',
                    linkadd:
                        'https://media.licdn.com/dms/image/D4D03AQF1YaffrZiecg/profile-displayphoto-shrink_200_200/0/1711963473267?e=1721260800&v=beta&t=WFXY7Q67ECUMsiYVRhmPpespEkx4rf6Ybo_hmRg47u0'),
                SizedBox(
                  width: 4,
                ),
                LinkandTitle(
                    title: 'Forhad',
                    linkadd:
                        'https://scontent.fdac14-1.fna.fbcdn.net/v/t39.30808-6/258761897_3104261026559467_2521813222604101792_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeFfBnAO_lG7lHxY5FaFPTpZs1ZtF3OFL0qzVm0Xc4UvSkFD6CaceLHBQw_8wpW3vDgG8dk2eqULEuXl007kk28e&_nc_ohc=HFZYTS0DeGwQ7kNvgH3p1Yr&_nc_ht=scontent.fdac14-1.fna&oh=00_AYDTGYyalOyruYdJH-aG4r_tWex-YDUX89O_3NpZoG4l-Q&oe=664D4E4B'),
                SizedBox(
                  width: 4,
                ),
                LinkandTitle(
                    title: 'Raihan',
                    linkadd:
                        'https://scontent.fdac14-1.fna.fbcdn.net/v/t39.30808-6/433235191_1425400644783783_1084800822588547501_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeEPnhNvS47dMUKcfaIA0GfYGdjkuiepwL8Z2OS6J6nAv6c3x8FVjwjv8pE-leN3hUdFg4YuDSgPZKTE2tRVjgPF&_nc_ohc=oI31Pja8mvwQ7kNvgG3ZtuK&_nc_ht=scontent.fdac14-1.fna&oh=00_AYAsgyribJa5TK2Wqey1CL8SuSI9_2oD3rPp3ZdwJvb6IA&oe=664D68FB'),
                SizedBox(
                  width: 4,
                ),
                LinkandTitle(
                    title: 'Navil',
                    linkadd:
                        'https://scontent.fdac14-1.fna.fbcdn.net/v/t39.30808-6/322876132_880833909617407_2293408177618842477_n.jpg?stp=cp6_dst-jpg&_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHVykniJTTsI_3yhwWXOliFc56xLYKRc89znrEtgpFzz_B6gvuOQRcu8znST7qPqudqPhWRJp1lLulqfTQYjmLu&_nc_ohc=NiHUfbC8HdsQ7kNvgGCVe1u&_nc_ht=scontent.fdac14-1.fna&oh=00_AYC5i2JEuazhaQF7NGq20lRuql9Li0Rngvo6XWH9VM3_PQ&oe=664D4E7C'),
                SizedBox(
                  width: 4,
                ),
                LinkandTitle(
                    title: 'Masum',
                    linkadd:
                        'https://scontent.fdac14-1.fna.fbcdn.net/v/t39.30808-6/426186800_3719585055031078_8532683072388293489_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeHFbgJTkKPB8aHyYjr72-jf1vFm-D2rcnPW8Wb4PatycyKwkXZmeEKiCa2v2LxjY_GF1Js6UZteuzm3UFgmbrEY&_nc_ohc=L6FNb1PRNQwQ7kNvgF4T8Kj&_nc_ht=scontent.fdac14-1.fna&oh=00_AYB-NwYWlnU1RDqUgW9a01HOglBDiTz6B9nO6P87ykalPA&oe=664D5562'),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
