import 'package:flutter/material.dart';

class Starter extends StatefulWidget {
  const Starter({Key? key});

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  List<String> imagePaths = [
    'assets/grilled.png',
    'assets/mush.png',
    'assets/grilled.png',
    'assets/mush.png',
  ];

  List<String> titles = [
    'Grill Chicken',
    'Mushroom',
    'Grill Chicken',
    'Mushroom',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Starters',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
              Text(
                'More Starters',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF6318AF),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  width: 192,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          imagePaths[index],
                          fit: BoxFit.fitWidth,
                          width: 192,
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            titles[index],
                            style: TextStyle(
                              color: Color(0xFF3C3C3C),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
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
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
