// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            children: [
             
              ListTile(
                  
              title: Text('Status'),
              
              trailing: Icon((FontAwesomeIcons.ellipsisVertical)
              ),
              ),

              ListTile(
                  leading: CircleAvatar(
                    child: IconButton(
                      onPressed: (){}, icon: Icon(FontAwesomeIcons.plus)),
                  backgroundColor: Colors.teal,
                  radius: 20, ),
              title: Text('My status'),
              subtitle: Text('tap to add stutus update',
              style: TextStyle(fontSize: 12),),
              
            
            ),
              ListTile(
                  
              title: Text('Channels'),
              
              trailing: Icon((FontAwesomeIcons.plus),
              ),
              ),

              ListTile(
                  
              title: Text('Find Channels'),
              
              trailing: Icon((FontAwesomeIcons.magnifyingGlassArrowRight),
              ),
              ),
              SizedBox(height: 6,),
              
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    
                
                
                    Container(//1
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(131, 158, 158, 158),
                      ),
                      
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                             backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/Manchester_City_FC_badge.svg/1200px-Manchester_City_FC_badge.svg.png'),
                            ),
                            Text('Man City'),
                            ElevatedButton(onPressed:(){},
                             child:Text('Follow'),
                             
                             )
                          ],
                    ),
                    ),
                    SizedBox(width: 4,),
                
                    Container(//2
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(131, 158, 158, 158),
                      ),
                      
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                             backgroundImage: AssetImage('Image/Bhai.jpg'),
                            ),
                            Text('Fuad Alum'),
                            ElevatedButton(onPressed:(){},
                             child:Text('Follow'),
                             
                             )
                          ],
                    ),
                    ),
                    SizedBox(width: 4,),
                    
                    
                    Container(//3
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(131, 158, 158, 158),
                      ),
                      
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                             backgroundImage: AssetImage('FB.jpg'),
                            ),
                            Text('Shakil'),
                            ElevatedButton(onPressed:(){},
                             child:Text('Follow'),
                             
                             )
                          ],
                    ),
                    ),
                    SizedBox(width: 4,),
                
                    Container(//4
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(131, 158, 158, 158),
                      ),
                      
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                             backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/4/47/FC_Barcelona_%28crest%29.svg/800px-FC_Barcelona_%28crest%29.svg.png'),
                            ),
                            Text('FC Barcelona'),
                            ElevatedButton(onPressed:(){},
                             child:Text('Follow'),
                             
                             )
                          ],
                    ),
                    ),
                    SizedBox(width: 4,),

                    Container(//5
                    height: 120,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(131, 158, 158, 158),
                    ),
                    
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                           backgroundImage:NetworkImage('https://cdn.icon-icons.com/icons2/3041/PNG/512/spotify_logo_icon_189218.png')
                          ),
                          Text('Spotify'),
                          ElevatedButton(onPressed:(){},
                           child:Text('Follow'),
                           
                           )
                        ],
                  ),
                  ),
                  SizedBox(width: 4,),

                  Container(//6
                    height: 120,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(131, 158, 158, 158),
                    ),
                    
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                           backgroundImage: NetworkImage('https://i.pinimg.com/736x/1b/54/ef/1b54efef3720f6ac39647fc420d4a6f9.jpg')
                          ),
                          Text('Netflix'),
                          ElevatedButton(onPressed:(){},
                           child:Text('Follow'),
                           
                           )
                        ],
                  ),
                  ),
                  SizedBox(width: 4,),
                  ],
                ),
              )
            ],
          ),
    );
  }
}