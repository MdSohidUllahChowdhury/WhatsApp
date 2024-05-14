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
             
              const ListTile(
                  
              title: Text('Status'),
              
              trailing: Icon((FontAwesomeIcons.ellipsisVertical)
              ),
              ),

              ListTile(
                  leading: CircleAvatar(
                    child: IconButton(
                      onPressed: (){}, icon: const Icon(FontAwesomeIcons.plus)),
                  backgroundColor: Colors.teal,
                  radius: 20, ),
              title: const Text('My status'),
              subtitle: const Text('tap to add stutus update',
              style: TextStyle(fontSize: 12),),
              
            
            ),
              const ListTile(
                  
              title: Text('Channels'),
              
              trailing: Icon((FontAwesomeIcons.plus),
              ),
              ),

              const ListTile(
                  
              title: Text('Find Channels'),
              
              trailing: Icon((FontAwesomeIcons.magnifyingGlassArrowRight),
              ),
              ),
              const SizedBox(height: 6,),
              
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
                            const CircleAvatar(
                             backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/e/eb/Manchester_City_FC_badge.svg/1200px-Manchester_City_FC_badge.svg.png'),
                            ),
                            const Text('Man City'),
                            ElevatedButton(onPressed:(){},
                             child:const Text('Follow'),
                             
                             )
                          ],
                    ),
                    ),
                    const SizedBox(width: 4,),
                
                    Container(//2
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(131, 158, 158, 158),
                      ),
                      
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                             backgroundImage: AssetImage('Image/Bhai.jpg'),
                            ),
                            const Text('Fuad Alum'),
                            ElevatedButton(onPressed:(){},
                             child:const Text('Follow'),
                             
                             )
                          ],
                    ),
                    ),
                    const SizedBox(width: 4,),
                    
                    
                    Container(//3
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(131, 158, 158, 158),
                      ),
                      
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                             backgroundImage: AssetImage('FB.jpg'),
                            ),
                            const Text('Shakil'),
                            ElevatedButton(onPressed:(){},
                             child:const Text('Follow'),
                             
                             )
                          ],
                    ),
                    ),
                    const SizedBox(width: 4,),
                
                    Container(//4
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(131, 158, 158, 158),
                      ),
                      
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                             backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/4/47/FC_Barcelona_%28crest%29.svg/800px-FC_Barcelona_%28crest%29.svg.png'),
                            ),
                            const Text('FC Barcelona'),
                            ElevatedButton(onPressed:(){},
                             child:const Text('Follow'),
                             
                             )
                          ],
                    ),
                    ),
                    const SizedBox(width: 4,),

                    Container(//5
                    height: 120,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(131, 158, 158, 158),
                    ),
                    
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                           backgroundImage:NetworkImage('https://cdn.icon-icons.com/icons2/3041/PNG/512/spotify_logo_icon_189218.png')
                          ),
                          const Text('Spotify'),
                          ElevatedButton(onPressed:(){},
                           child:const Text('Follow'),
                           
                           )
                        ],
                  ),
                  ),
                  const SizedBox(width: 4,),

                  Container(//6
                    height: 120,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(131, 158, 158, 158),
                    ),
                    
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                           backgroundImage: NetworkImage('https://i.pinimg.com/736x/1b/54/ef/1b54efef3720f6ac39647fc420d4a6f9.jpg')
                          ),
                          const Text('Netflix'),
                          ElevatedButton(onPressed:(){},
                           child:const Text('Follow'),
                           
                           )
                        ],
                  ),
                  ),
                  const SizedBox(width: 4,),
                  ],
                ),
              )
            ],
          ),
    );
  }
}