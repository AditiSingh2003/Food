import 'package:flutter/material.dart';
import 'package:food/Screen/Welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sizer/sizer.dart';
import 'package:food/Screen/Splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    )
  );
}


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override

  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Text('Welcome',style: TextStyle(fontSize: 30,color:Colors.black),textAlign: TextAlign.center,),
      color: Colors.red,
    );
  }
}