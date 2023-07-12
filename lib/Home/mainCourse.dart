import 'package:flutter/material.dart';

class mainCourse extends StatefulWidget {
  const mainCourse({Key? key});

  @override
  State<mainCourse> createState() => _mainCourse();
}

class _mainCourse extends State<mainCourse> {
  List<String> imagePaths = [
    'assets/biryani.png',
    'assets/bread.png',
    'assets/biryani.png',
  ];

  List<String> titles = [
    'Biryani',
    'Bread',
    'Biryani',
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
                'Main Course',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'More Main Courses',
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
              itemCount: 3,
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
