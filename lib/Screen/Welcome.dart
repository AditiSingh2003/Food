import 'package:flutter/material.dart';
import 'package:food/Screen/Splash.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> 
with SingleTickerProviderStateMixin{


  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
       Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Splash(),
              ),
            );
    });
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/Splash_screen_4.png'),
        fit: BoxFit.cover
      ),
      ),
      
    );
  }
}