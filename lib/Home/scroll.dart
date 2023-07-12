import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            width: 300,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Image.asset('assets/header.png'),
          );
        },
      ),
    );
  }
}
