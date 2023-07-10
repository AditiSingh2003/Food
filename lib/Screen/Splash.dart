import 'package:flutter/material.dart';
import 'package:food/Screen/OnBoard.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(
      context,
        MaterialPageRoute(
          builder: (context) => onBoard(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/Splash_screen_4.jpg'),
        fit: BoxFit.cover
      ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150,),
            Text(
              'Craft My Plate',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Capriola',
                color: Color(0xFFF7E5B7),
                decoration: TextDecoration.none
              ),
            ),
            SizedBox(height: 10,),
            Text('you customise, We cater',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Capriola',
                color: Color(0xFFD5B67D),
                decoration: TextDecoration.none
              ),
              )
          ],
        ),
      ),
    );
  }
}