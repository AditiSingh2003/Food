import 'package:flutter/material.dart';

class Crafting extends StatefulWidget {
  const Crafting({Key? key}) : super(key: key);

  @override
  State<Crafting> createState() => _CraftingState();
}

class _CraftingState extends State<Crafting> {
  List<String> imagePaths = [
    'assets/grilled.png',
    'assets/mush.png',
    'assets/grilled.png',
    'assets/mush.png',
  ];

  List<String> titles = [
    'Grilled Chicken',
    'Mushroom',
    'Grilled Chicken',
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
                'Starter',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'More Starters',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF6318AF),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 180,
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
                      children: [
                        Image.asset(
                          imagePaths[index],
                          fit: BoxFit.fitWidth,
                          width: 192,
                        ),
                        SizedBox(height: 10),
                        Text(
                          titles[index],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
