import 'package:flutter/material.dart';
import 'package:food/Home/crafting.dart';
import 'package:food/Home/header.dart';
import 'package:food/Home/scroll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,),
        child: Column(
          children: [
            Home(),
            Scroll(),
            Crafting(),
          ],
        ),
      ),
    );
  }
}