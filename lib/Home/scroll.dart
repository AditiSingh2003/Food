import 'package:flutter/material.dart';

class Scroll extends StatefulWidget {
  const Scroll({super.key});

  @override
  State<Scroll> createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: PageView(
          scrollDirection: Axis.horizontal,
          children: [
              Image.asset('assets/header.png',),
              Image.asset('assets/header.png',),
              Image.asset('assets/header.png',),
          ],
      ),
    );
  }
}