import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Hi, Monica',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF6318AF),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Current Location',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color(0xFF6318AF),
                      ),
                      Text('Hyderabad'),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.play_circle_outline_outlined,
                    color: Color(0xFF6318AF),
                  ),
                  Text('How it works?'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
