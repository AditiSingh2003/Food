import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            width: screenWidth * 0.8,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Image.asset('assets/header.png'),
          );
        },
      ),
    );
  }
}
