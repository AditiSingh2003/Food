import 'package:flutter/material.dart ';
import 'package:food/Home/topCatScroll.dart';

class TopCat extends StatefulWidget {
  const TopCat({super.key});

  @override
  State<TopCat> createState() => _TopCatState();
}

class _TopCatState extends State<TopCat> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,),
          Text('Top Categories',
          style: TextStyle(
            fontSize: 20,
          ),),
          SizedBox(
            height: 10,
          ),
          TopCatScroll(),
        ],
      ),
    );
  }
}