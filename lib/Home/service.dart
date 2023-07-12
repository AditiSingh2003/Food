import 'package:flutter/material.dart';

class Service extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/ice.png',
    'assets/ice.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return Container(
                width: 300,
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(
                        imagePaths[index],
                        alignment: Alignment.center,
                        height: 140,
                        width: 300,
                      ),
                      Stack(
                        children:[ 
                          Positioned(
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Color(0xFF6318AF),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'Recommended',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'Ice Cream',
                            style: TextStyle(
                              color: Color(0xFF6318AF),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
