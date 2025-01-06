import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Index(), 
    );
  }
}

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Center(
                  child: Container(
                    height: 800,  
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),  
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),  
                              child: Image.asset(
                                'assets/images/images.jpg',
                                height: 400, 
                                width: 400,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 20,  
                              child: IconButton(
                                icon: Icon(
                                  Icons.arrow_back, 
                                  color: Colors.white, 
                                  size: 30,
                                ),
                                onPressed: () {
                                  print('Back icon pressed!');
                                },
                              ),
                            ),
                          ],
                        ),
                      
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'White Snow Valley',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.favorite, 
                                      color: Colors.red, 
                                    ),
                                    onPressed: () {
                                      print('Added to favorites!');
                                    },
                                  ),
                                ],
                              ),
                              
                              SizedBox(height: 8),  

                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.location_pin, 
                                      color: const Color.fromARGB(255, 203, 244, 54),
                                    ),
                                    onPressed: () {
                                      print('Location clicked!');
                                    },
                                  ),
                                  Text(
                                    'National Uttarakhand',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black, 
                                    ),
                                  ),
                                ],
                              ),
                              
                              SizedBox(height: 16),  

                            
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                
                                  Column(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.star, 
                                          color: Colors.orange,
                                        ),
                                        onPressed: () {
                                          print('Rating clicked!');
                                        },
                                      ),
                                      Text(
                                        'Rating\n4.5(3.24)', 
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),

                                  
                                  Column(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.location_on, 
                                          color: Colors.blue,
                                        ),
                                        onPressed: () {
                                          print('Distance clicked!');
                                        },
                                      ),
                                      Text(
                                        'Distance\n30000 KM',  
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),

                                  
                                  Column(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.directions, 
                                          color: Colors.green,
                                        ),
                                        onPressed: () {
                                          print('Direction clicked!');
                                        },
                                      ),
                                      Text(
                                        'Direction\nN/A',  
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(height: 16),  

                            
                              Text(
                                'Snowfall in the White Snow Valley is a magical experience. The snowfall also enhances the beauty of the surrounding forests and mountains, providing a serene and peaceful atmosphere for visitors. It is a must-visit destination for anyone who loves the winter season and snowy landscapes.',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                                maxLines: 8,  
                                overflow: TextOverflow.ellipsis,  
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 100),
              ),
              child: Text('Book my trip', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
