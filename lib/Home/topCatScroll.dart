import 'package:flutter/material.dart';

class TopCatScroll extends StatefulWidget {
  const TopCatScroll({super.key});

  @override
  State<TopCatScroll> createState() => _TopCatScrollState();
}

class _TopCatScrollState extends State<TopCatScroll> {
  List<Image> img =[
    Image.asset('assets/Starter.png'),
    Image.asset('assets/drink.png'),
    Image.asset('assets/rice.png'),
    Image.asset('assets/curry.png'),
  ];
  List<String> title =[
    'Starter',
    'Drink',
    'Rice',
    'Curry',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            width: 80,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(children: [
              img[index],
              SizedBox(height: 10,),
              Text(
                title[index],
                style: TextStyle(
                  color: Color(0xFF6318AF),
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                ),
              ),
            ],)
          );
        },
      ),
    );
  }
}